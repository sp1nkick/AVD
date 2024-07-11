#description: Helpful script
#execution mode: IndividualWithRestart
#tags: Preview

<# Notes:
    This script will do some things!
#>


$ErrorActionPreference = 'Stop'
$registryPath="HKLM:SOFTWARE\FSLOGIX\Apps"

#cleanupinvalidsessions
Write-Output "Cleanup invalid sessions..."
Set-ItemProperty -Path $registryPath Type Dword -Name VHDCompactDisk -Value 1
Write-Output "Complete"

#Roam Recyclebin
Write-Output "Setting Roam Recyclebin Setting..."
Set-ItemProperty -Path $registryPath -Name "RoamRecycleBin" Value=1
Write-Output "Complete"

#Compact VHD disk
Write-Output "Setting Compact VHD Setting..."
Set-ItemProperty -Path $registryPath -Name "VHDCompactDisk" Value=1
Write-Output "Complete"