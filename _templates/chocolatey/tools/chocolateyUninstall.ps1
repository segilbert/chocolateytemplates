#NOTE: Please remove any commented lines to tidy up prior to releasing the package, including this one

#Uninstall for one of these: msi
#
$packageName = '__NAME__' # arbitrary name for the package, used in messages
# MSI UninstallString found in Windows Registry 
# Windows 7 +
# $file = (Get-ItemProperty "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{UPDATE_WITH_GUID}").UninstallString;
$file = (Get-ItemProperty "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{UPDATE_WITH_GUID}").UninstallString;

#Uninstall for one of these: exe
# Custom

#Uninstall for VSIX
# Custom

#Execute Uinstall Chocolatey Command
Uninstall-ChocolateyPackage $package 'MSI' -file $file


