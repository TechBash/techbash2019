# TODO: add typed parameters in line/multiple rows
# TODO: show passing arguments
# TODO: validate parameters

# Declare the function

<#
.SYNOPSIS
    Custom function in PowerShell to get a random number!
#>
function Get-RandomNumberCustom
{
    $rand = Get-Random -Minimum 1 -Maximum 10
    return $rand
}
Set-Alias -Name "grnc" -Value Get-RandomNumberCustom

# Call the function
Get-RandomNumberCustom
grnc