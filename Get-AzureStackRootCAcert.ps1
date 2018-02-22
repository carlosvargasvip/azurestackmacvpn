# Author: Carlos Vargas
# Version 1:0
# Scriptname: Get-AzureStackRootCAcert.ps1

Write-Verbose "Retrieving Azure Stack Root Authority certificate..." -Verbose

$cert = Invoke-Command -ComputerName $env:COMPUTERNAME -ScriptBlock { Get-ChildItem cert:\currentuser\root | where-object {$_.Subject -eq "CN=AzureStackCertificationAuthority, DC=AzureStack, DC=local"} }

if($cert -ne $null)
{
    if($cert.GetType().IsArray)
    {
        $cert = $cert[0] # take any that match the subject if multiple certs were deployed
    }

    if(!(test-path ".\output\"))
    {
        New-Item -ItemType Directory -Force -Path ".\output\"
    }

    $certFilePath = ".\output\CA.cer"
    

    Write-Verbose "Saving Azure Stack Root certificate in $certFilePath..." -Verbose

    export-Certificate -Cert $cert -FilePath $certFilePath -Force | Out-Null

}
else
{
    Write-Error "Certificate has not been retrieved!"
}
