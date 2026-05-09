# Parse a 32-bit ARM ELF .so and resolve a list of symbol names to file offsets + ARM/Thumb flag.
param(
    [Parameter(Mandatory=$true)][string]$Path,
    [Parameter(Mandatory=$true)][string[]]$Symbols
)

if (-not (Test-Path $Path)) { Write-Error "file not found"; exit 1 }
$bytes = [System.IO.File]::ReadAllBytes($Path)

function Read-U8([byte[]]$b,[int]$o){ return [int]$b[$o] }
function Read-U16([byte[]]$b,[int]$o){ return [int]([System.BitConverter]::ToUInt16($b,$o)) }
function Read-U32([byte[]]$b,[int]$o){ return [int64]([System.BitConverter]::ToUInt32($b,$o)) }

# ELF header (32-bit, little-endian)
if (-not ($bytes[0]-eq 0x7F -and $bytes[1]-eq 0x45 -and $bytes[2]-eq 0x4C -and $bytes[3]-eq 0x46)) { Write-Error 'not ELF'; exit 1 }
if ($bytes[4] -ne 1) { Write-Error 'not 32-bit ELF'; exit 1 }

$e_phoff     = Read-U32 $bytes 0x1C
$e_shoff     = Read-U32 $bytes 0x20
$e_phentsize = Read-U16 $bytes 0x2A
$e_phnum     = Read-U16 $bytes 0x2C
$e_shentsize = Read-U16 $bytes 0x2E
$e_shnum     = Read-U16 $bytes 0x30
$e_shstrndx  = Read-U16 $bytes 0x32

# Read program headers (need LOAD segments to map vaddr -> file offset)
$loads = @()
for ($i=0; $i -lt $e_phnum; $i++) {
    $o = $e_phoff + $i * $e_phentsize
    $p_type   = Read-U32 $bytes $o
    $p_offset = Read-U32 $bytes ($o+4)
    $p_vaddr  = Read-U32 $bytes ($o+8)
    $p_filesz = Read-U32 $bytes ($o+0x10)
    $p_memsz  = Read-U32 $bytes ($o+0x14)
    $p_flags  = Read-U32 $bytes ($o+0x18)
    if ($p_type -eq 1) {  # PT_LOAD
        $loads += [pscustomobject]@{ off=$p_offset; vaddr=$p_vaddr; filesz=$p_filesz; memsz=$p_memsz; flags=$p_flags }
    }
}

function VA-to-FileOff($va) {
    foreach ($s in $script:loads) {
        if ($va -ge $s.vaddr -and $va -lt ($s.vaddr + $s.filesz)) {
            return ($va - $s.vaddr + $s.off)
        }
    }
    return -1
}

# Read section headers, build lookup
$sections = @()
$shstrtab_off = 0
if ($e_shstrndx -ne 0) {
    $sho = $e_shoff + $e_shstrndx * $e_shentsize
    $shstrtab_off = Read-U32 $bytes ($sho + 0x10)
}
for ($i=0; $i -lt $e_shnum; $i++) {
    $o = $e_shoff + $i * $e_shentsize
    $sh_name   = Read-U32 $bytes $o
    $sh_type   = Read-U32 $bytes ($o+4)
    $sh_off    = Read-U32 $bytes ($o+0x10)
    $sh_size   = Read-U32 $bytes ($o+0x14)
    $sh_link   = Read-U32 $bytes ($o+0x18)
    $sh_entsize= Read-U32 $bytes ($o+0x24)
    # read name from shstrtab
    $name = ''
    if ($shstrtab_off -gt 0) {
        $p = $shstrtab_off + $sh_name
        $end = $p
        while ($end -lt $bytes.Length -and $bytes[$end] -ne 0) { $end++ }
        $name = [System.Text.Encoding]::ASCII.GetString($bytes, $p, $end - $p)
    }
    $sections += [pscustomobject]@{ idx=$i; name=$name; type=$sh_type; off=$sh_off; size=$sh_size; link=$sh_link; entsize=$sh_entsize }
}

$dynsym  = $sections | Where-Object { $_.name -eq '.dynsym' } | Select-Object -First 1
$dynstr  = $sections | Where-Object { $_.name -eq '.dynstr' } | Select-Object -First 1
if (-not $dynsym -or -not $dynstr) { Write-Error 'no .dynsym/.dynstr'; exit 1 }

# Build dictionary symbolName -> {vaddr, size, type}
# Find each requested symbol by linear scan of .dynsym
$symEntSize = if ($dynsym.entsize -gt 0) { $dynsym.entsize } else { 16 }
$symCount   = [int]($dynsym.size / $symEntSize)

$wanted = @{}
foreach ($s in $Symbols) { $wanted[$s] = $true }

# Print header
"{0,-60} {1,-10} {2,-10} {3,-10} {4}" -f 'Symbol','vaddr','file_off','size','thumb'

for ($i=0; $i -lt $symCount; $i++) {
    $o = $dynsym.off + $i * $symEntSize
    $st_name  = Read-U32 $bytes $o
    $st_value = Read-U32 $bytes ($o+4)
    $st_size  = Read-U32 $bytes ($o+8)
    $st_info  = Read-U8  $bytes ($o+12)
    if ($st_name -eq 0) { continue }
    # Read name string
    $p = $dynstr.off + $st_name
    $end = $p
    while ($end -lt $bytes.Length -and $bytes[$end] -ne 0) { $end++ }
    $name = [System.Text.Encoding]::ASCII.GetString($bytes, $p, $end - $p)
    if ($wanted.ContainsKey($name)) {
        $thumb = ($st_value -band 1) -ne 0
        $real_va = $st_value -band (-2)
        $foff = VA-to-FileOff $real_va
        "{0,-60} {1:X8}   {2:X8}   {3,-10} {4}" -f $name, $real_va, $foff, $st_size, $(if ($thumb){'thumb'}else{'arm'})
    }
}
