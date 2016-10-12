Invoke-WebRequest -Uri https://github.com/carlosvargasvip/azurestackmacvpn/archive/master.zip -Outfile $env:userprofile\downloads\azurestackvpn.zip
expand-archive $env:userprofile\downloads\azurestackvpn.zip . -force
