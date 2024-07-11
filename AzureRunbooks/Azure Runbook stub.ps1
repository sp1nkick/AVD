#description: A runbook script
#tags: Preview

<# Notes:
    This script will do things in Azure!
#>

<# Variables:
{
    "HostPoolName": {
        "Description": "Hostpool Name",
        "IsRequired": True
    },
    "HostPoolGroup": {
        "Description": "Host Pool Resource Group",
        "IsRequired": True
    },
    Hours": {
        "Description": "Hours",
        "IsRequired": True
}
#>

$ErrorActionPreference = 'Stop'


# Retrieve Host Pool session hosts
Get-AzWvdSessionHost –HostPoolName $HostPoolName -ResourceGroupName
$HostPoolResourceGroup

# Parse VM names from session host names


# Set WAP_SCALE_IN_RESTRICTION tag on each VM to future datetime based on Hours parameter (See lab guide for hint)


# Start VMs 



