# get home
$l = Get-Location

Set-Location ..\compiled\ConsoleAppWithArgs\bin\Debug\netcoreapp3.0

# TODO: Call ConsoleAppWithArgs.exe with arguments

.\ConsoleAppWithArgs.exe "arg1" "arg2" "arg3"
#.\ConsoleAppWithArgs.exe "arg1", "arg2", "arg3"

# $arg1 = "arg 1"
# $arg2 = "arg 2"

# # TODO: is this right?
# $expression = ".\ConsoleAppWithArgs.exe $arg1 $arg2"

# Write command as a PowerShell expression
#Invoke-Expression -Command $expression
#Invoke-Expression -Command ".\ConsoleAppWithArgs.exe '$arg1' '$arg2'"

# Use the call operator, again as a PowerShell expression
#& ".\ConsoleAppWithArgs.exe" $arg1 $arg2

# go back home
Set-Location $l