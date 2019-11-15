# lite error handling

#$ErrorActionPreference = "Continue"
#Stop-Process -ErrorAction Continue

function Do-Something
{
    #throw "Something bad happened!"
    # $array = @("foo")
    # $array[1] = "bar"
}

# TODO: throw keyword
# TODO: try/catch with $_ within
# TODO: finally
# TODO: typed exceptions (System.IndexOutOfRangeException); multiple at once
# TODO: $error var

try {
     Do-Something
     "We did something"
}
catch [System.IndexOutOfRangeException] {
    "You shouldn't do that to an array!"
}
catch {
    #$_
    Write-Host $_.Exception.Message -ForegroundColor Cyan
}
finally
{
    "Whew! We made it!"
}