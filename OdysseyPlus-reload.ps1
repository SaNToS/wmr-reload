if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" -device `"$device`" -type `"$type`"" -Verb RunAs; exit
}
Disable-PnpDevice -InstanceId 'DISPLAY\SEC144A\5&E415E6A&4&UID265' -confirm:$false
Start-Sleep -s 2
Enable-PnpDevice -InstanceId 'DISPLAY\SEC144A\5&E415E6A&4&UID265' -confirm:$false
