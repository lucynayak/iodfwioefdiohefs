$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin) {
    $elevatedArgs = '-NoProfile -ExecutionPolicy Bypass -File "{0}"' -f $PSCommandPath
    Start-Process PowerShell -Verb RunAs -ArgumentList $elevatedArgs
    exit
}

$out = 'C:\Users\triggertrash\Desktop\horrible v2\disable_bridge_filters_wifi.txt'
$components = 'vmware_bridge','ms_l2bridge','ms_l1vhlwf'
$defaultInterface = Get-NetIPConfiguration | Where-Object { $_.IPv4DefaultGateway -ne $null -and $_.NetAdapter.Status -eq 'Up' } | Select-Object -First 1

function Write-SelectedBindings {
    param(
        [string]$Title,
        [string]$Adapter,
        [string[]]$ComponentIds,
        [string]$OutputPath
    )

    Add-Content $OutputPath $Title
    $bindings = Get-NetAdapterBinding -Name $Adapter | Where-Object { $_.ComponentID -in $ComponentIds } | Select-Object DisplayName, ComponentID, Enabled
    if ($bindings) {
        $bindings | Format-Table -AutoSize | Out-String | Add-Content $OutputPath
    } else {
        Add-Content $OutputPath '[no matching bindings found]'
        Add-Content $OutputPath ''
    }
}

'Timestamp: ' + (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') | Set-Content $out -Encoding UTF8
'ScriptVersion: vmware-netcfg-fallback-2' | Add-Content $out
'Admin: True' | Add-Content $out

if (-not $defaultInterface) {
    Add-Content $out 'Error: no active default IPv4 interface found.'
    Start-Process notepad.exe $out
    Read-Host 'Press Enter to exit'
    exit
}

$adapter = $defaultInterface.InterfaceAlias

Add-Content $out ''
Add-Content $out ('Adapter: ' + $adapter)
Write-SelectedBindings -Title 'Before:' -Adapter $adapter -ComponentIds $components -OutputPath $out

foreach ($component in $components) {
    try {
        Disable-NetAdapterBinding -Name $adapter -ComponentID $component -Confirm:$false -ErrorAction Stop | Out-Null
        Add-Content $out ("Disabled: " + $component)
    } catch {
        Add-Content $out ("Failed: " + $component + ' :: ' + $_.Exception.Message)

        if ($component -eq 'vmware_bridge') {
            Add-Content $out 'Fallback: stopping VMnetBridge driver'
            (sc.exe stop VMnetBridge 2>&1 | Out-String) | Add-Content $out
            Add-Content $out 'Fallback: uninstalling vmware_bridge via netcfg -u'
            (& netcfg.exe -u vmware_bridge 2>&1 | Out-String) | Add-Content $out
            Write-SelectedBindings -Title 'After vmware_bridge fallback:' -Adapter $adapter -ComponentIds $components -OutputPath $out
        }
    }
}

Add-Content $out ""
Write-SelectedBindings -Title 'After:' -Adapter $adapter -ComponentIds $components -OutputPath $out
Write-Host "Done. Results: $out"
Start-Process notepad.exe $out
Read-Host 'Press Enter to exit'
