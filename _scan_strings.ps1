# Fast keyword search in a binary file using string IndexOf (Latin-1 mapping).
param(
    [Parameter(Mandatory=$true)][string]$Path,
    [string[]]$Keywords = @('Skin','Persona','Entitle','entitle','Premium','premium','isOwned','SkinPack','SkinAuth','Marketplace','Ownership','PackInfo','PackManifest','PackSource','isPaid','hasOwn','Owned')
)

if (-not (Test-Path $Path)) { Write-Error "file not found"; exit 1 }
$bytes = [System.IO.File]::ReadAllBytes($Path)
# Latin-1 = ISO-8859-1 = 1 byte to 1 char identity
$enc = [System.Text.Encoding]::GetEncoding(28591)
$text = $enc.GetString($bytes)
$len = $text.Length

foreach ($kw in $Keywords) {
    $idx = 0
    while ($true) {
        $idx = $text.IndexOf($kw, $idx, [System.StringComparison]::Ordinal)
        if ($idx -lt 0) { break }
        # expand back
        $s = $idx
        while ($s -gt 0) {
            $c = [int]$text[$s - 1]
            if ($c -lt 0x20 -or $c -ge 0x7F) { break }
            $s--
        }
        # expand forward
        $e = $idx + $kw.Length
        while ($e -lt $len) {
            $c = [int]$text[$e]
            if ($c -lt 0x20 -or $c -ge 0x7F) { break }
            $e++
        }
        $strLen = $e - $s
        if ($strLen -ge 5) {
            $str = $text.Substring($s, $strLen)
            "{0,-12} {1:X8}  {2}" -f $kw, $s, $str
        }
        $idx = $e
    }
}
