This is the repo for the script to configure and gather information for Azure Stack MAC OS X VPN

How to use the code

1 .Login to your Azure Stack Hyper-V Host
2 .Download the scripts to the host so you can gather the information you need to configure your VPN session. 
~~~~
Invoke-WebRequest -Uri https://github.com/carlosvargasvip/azurestackmacvpn/archive/master.zip -Outfile $env:userprofile\downloads\azurestackvpn.zip
expand-archive $env:userprofile\downloads\azurestackvpn.zip 
~~~~

3 .Execute the scripts to gather your information. The results will be store in your $env:userprofile\downloads folder
4 .Copy it out over the network or via your favorite cloud vendor.
5 . Add the Certificate to your MAC OS X Keychain
6 . Create a new L2TP connection

