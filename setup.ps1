iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
scoop install 7zip
Invoke-WebRequest "https://secure-appldnld.apple.com/itunes12/091-87819-20180912-69177170-B085-11E8-B6AB-C1D03409AD2A6/iTunes64Setup.exe" -OutFile "$env:USERPROFILE\archive.zip"
7z x -y archive.zip
Start-Process msiexec.exe -Wait -ArgumentList '/I AppleApplicationSupport64.msi /quiet'
Start-Process msiexec.exe -Wait -ArgumentList '/I AppleMobileDeviceSupport6464.msi /quiet'
Start-Process msiexec.exe -Wait -ArgumentList '/I Bonjour64.msi /quiet'
Start-Process msiexec.exe -Wait -ArgumentList '/I iTunes64.msi /quiet'
scoop install nodejs nvm
scoop install sudo
sudo npm install --global --production windows-build-tools
$script:iTunes = New-Object -ComObject iTunes.Application