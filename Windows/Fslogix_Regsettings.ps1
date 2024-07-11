#description: Helpful script
#execution mode: IndividualWithRestart
#tags: Preview

<# Notes:
    This script will do some things!
#>


$ErrorActionPreference = 'Stop'
$RegistryPath="HKLM:SOFTWARE\FSLOGIX\Apps"



Write-Output 'Setting Cleanup Invalid Sessions key...'
# Set variables to indicate value and key to set
$Name         = 'CleanupInvalidSessions'
$Value        = '1'
# Create the key if it does not exist
If (-NOT (Test-Path $RegistryPath)) {
  New-Item -Path $RegistryPath -Force | Out-Null
}  
# Now set the value
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force 
Write-Output 'complete'

Write-Output 'Setting Roaming Recyclebin key...'
# Set variables to indicate value and key to set
$Name         = 'RoamRecycleBin'
$Value        = '1'
# Create the key if it does not exist
If (-NOT (Test-Path $RegistryPath)) {
  New-Item -Path $RegistryPath -Force | Out-Null
}  
# Now set the value
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force 
Write-output 'Complete'

Write-Output 'Setting VHDCompactDisk'
# Set variables to indicate value and key to set
$Name         = 'VHDCompactDisk'
$Value        = '1'
# Create the key if it does not exist
If (-NOT (Test-Path $RegistryPath)) {
  New-Item -Path $RegistryPath -Force | Out-Null
}  
# Now set the value
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force 
write-output 'complete'