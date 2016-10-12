# Author: Carlos Vargas
# Version 1:0
# Scriptname: Get-AzureStackNatIP.ps1

$natip = Invoke-Command -ComputerName mas-bgpnat01 -ScriptBlock {Get-NetIPConfiguration | ? {$_.IPv4DefaultGateway -ne $null } | Foreach {$_.IPv4Address.IPAddress}}
Write-Output "Your IP Address for VPN is : $natip" | Out-File $env:userprofile\downloads\natip.txt
Get-Content $env:userprofile\downloads\natip.txt