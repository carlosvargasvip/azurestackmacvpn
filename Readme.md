This is the repo for the script to configure and gather information for Azure Stack MAC OS X VPN

How to use the code

* Login to your Azure Stack Hyper-V Host
* Download the scripts to the host so you can gather the information you need to configure your VPN session. 
~~~~
Invoke-WebRequest -Uri https://github.com/carlosvargasvip/azurestackmacvpn/archive/master.zip -Outfile $env:userprofile\downloads\azurestackvpn.zip
expand-archive $env:userprofile\downloads\azurestackvpn.zip 
~~~~

* Execute the scripts to gather your information. The results will be store in your $env:userprofile\downloads folder
* Copy it out over the network or via your favorite cloud vendor.
* Add the Certificate to your MAC OS X Keychain
* Create a new L2TP connection

