# Author: Carlos Vargas
# Version 1:0
# Scriptname: Get-AzureStackNatIP.ps1

$natip = Invoke-Command -ComputerName $env:COMPUTERNAME -ScriptBlock {Get-NetIPConfiguration | ? {$_.IPv4DefaultGateway -ne $null } | Foreach {$_.IPv4Address.IPAddress}}
if(!(test-path ".\output\"))
{
    New-Item -ItemType Directory -Force -Path ".\output\"
}
Write-Output "Your IP Address for VPN is : $natip" | Out-File ".\output\natip.txt"
Get-Content ".\output\natip.txt"