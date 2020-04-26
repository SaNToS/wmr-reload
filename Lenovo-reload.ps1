if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" -device `"$device`" -type `"$type`"" -Verb RunAs; exit
} 
Disable-PnpDevice -InstanceId 'DISPLAY\LENB800\5&1A057E59&0&UID268' -confirm:$false
Start-Sleep -s 2
Enable-PnpDevice -InstanceId 'DISPLAY\LENB800\5&1A057E59&0&UID268' -confirm:$false
