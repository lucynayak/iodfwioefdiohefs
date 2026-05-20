$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin) {
    Start-Process -FilePath 'powershell.exe' -Verb RunAs -ArgumentList @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $PSCommandPath)
    exit
}

$log = 'C:\Users\triggertrash\Desktop\horrible v2\vmware_cleanup_log.txt'
$services = @('VMAuthdService','VMnetDHCP','VMware NAT Service','VMUSBArbService','VmwareAutostartService')
$drivers = @('VMnetBridge','VMnetuserif','VMnetAdapter','vmusb','vmx86','vmci','hcmon')
$devices = @('ROOT\VMWARE\0000','ROOT\VMWARE\0001')
$driverInfs = @('oem245.inf','oem267.inf','oem380.inf','oem395.inf')

function Write-Log {
    param([string]$Text)
    Add-Content -Path $log -Value $Text
}

function Write-Section {
    param([string]$Title)
    Add-Content -Path $log -Value ''
    Add-Content -Path $log -Value ('=== ' + $Title + ' ===')
}

function Run-And-Log {
    param(
        [string]$Title,
        [scriptblock]$Script
    )

    Write-Section $Title
    try {
        $output = & $Script 2>&1 | Out-String
        if ([string]::IsNullOrWhiteSpace($output)) {
            Write-Log '[no output]'
        } else {
            Write-Log $output.TrimEnd()
        }
    } catch {
        Write-Log ($_.Exception | Out-String)
    }
}

'VMware cleanup for TUN' | Set-Content -Path $log -Encoding UTF8
Write-Log ('Timestamp: ' + (Get-Date).ToString('yyyy-MM-dd HH:mm:ss'))
Write-Log 'ScriptVersion: vmware-cleanup-1'
Write-Log 'Admin: True'

Run-And-Log 'Before: VMware services' {
    Get-Service | Where-Object { $_.Name -match 'vmware|vmnet|vmusb|vmauth' -or $_.DisplayName -match 'VMware' } |
        Select-Object Name, Status, StartType, DisplayName |
        Format-Table -Wrap
}

Run-And-Log 'Before: VMware drivers' {
    Get-WmiObject Win32_SystemDriver |
        Where-Object { $_.Name -in $drivers -or $_.DisplayName -match 'VMware' } |
        Select-Object Name, DisplayName, State, StartMode, PathName |
        Format-Table -Wrap
}

foreach ($name in ($services + $drivers)) {
    Run-And-Log ('sc stop ' + $name) { & sc.exe stop $name }
    Run-And-Log ('sc config ' + $name + ' start= disabled') { & sc.exe config $name start= disabled }
}

foreach ($device in $devices) {
    Run-And-Log ('pnputil /remove-device ' + $device) { & pnputil.exe /remove-device $device }
}

foreach ($inf in $driverInfs) {
    Run-And-Log ('pnputil /delete-driver ' + $inf + ' /uninstall /force') { & pnputil.exe /delete-driver $inf /uninstall /force }
}

foreach ($name in ($drivers + $services)) {
    Run-And-Log ('sc delete ' + $name) { & sc.exe delete $name }
}

Run-And-Log 'After: VMware services' {
    Get-Service | Where-Object { $_.Name -match 'vmware|vmnet|vmusb|vmauth' -or $_.DisplayName -match 'VMware' } |
        Select-Object Name, Status, StartType, DisplayName |
        Format-Table -Wrap
}

Run-And-Log 'After: VMware drivers' {
    Get-WmiObject Win32_SystemDriver |
        Where-Object { $_.Name -in $drivers -or $_.DisplayName -match 'VMware' } |
        Select-Object Name, DisplayName, State, StartMode, PathName |
        Format-Table -Wrap
}

Run-And-Log 'After: VMware net devices' {
    Get-PnpDevice -Class Net |
        Where-Object { $_.FriendlyName -match 'VMware' -or $_.InstanceId -match 'ROOT\\VMWARE' } |
        Select-Object FriendlyName, InstanceId, Status |
        Format-Table -Wrap
}

Run-And-Log 'After: Active adapter vmware bridge binding' {
    $defaultInterface = Get-NetIPConfiguration | Where-Object { $_.IPv4DefaultGateway -ne $null -and $_.NetAdapter.Status -eq 'Up' } | Select-Object -First 1
    if ($defaultInterface) {
        Get-NetAdapterBinding -Name $defaultInterface.InterfaceAlias | Where-Object { $_.ComponentID -eq 'vmware_bridge' } |
            Select-Object DisplayName, ComponentID, Enabled |
            Format-Table -AutoSize
    } else {
        'No active default IPv4 interface found.'
    }
}

Write-Section 'Next step'
Write-Log 'RebootRequired: True'
Write-Log 'If VMware services or drivers were marked for deletion, reboot Windows before testing Happ TUN again.'
Start-Process notepad.exe $log
Read-Host 'Press Enter to exit'
