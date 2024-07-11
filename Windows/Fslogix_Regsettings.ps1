#description: Helpful script
#execution mode: IndividualWithRestart
#tags: Preview

<# Notes:
    This script will do some things!
#>


$ErrorActionPreference = 'Stop'
$registryPath="HKLM:SOFTWARE\FSLOGIX\Apps"

#cleanupinvalidsessions
Write-Output
New-Item -Path $registryPath -Name "CleanupInvalidSessions" Value=1
Write-Output

#Roam Recyclebin
Write-Output
New-Item -Path $registryPath -Name "RoamRecyclebin" Value=1
Write-Output

#Compact VHD disk
Write-Output
New-Item -Path $registryPath -Name "VHDCompactDisk" Value=1
Write-Output