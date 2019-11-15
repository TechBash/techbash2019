
# Sample REST API site: https://reqres.in/

# Headers
$headers = @{    
    "Content-Type"="application/json"
}

$baseUrl = "https://reqres.in"

# Example 1: GET with Invoke-WebRequest
# $result = Invoke-WebRequest -Method Get -Uri "$baseUrl/api/users?page=2" -Headers $headers
# $result
# $result.GetType().FullName
# $result.Content | ConvertFrom-Json | Select-Object -ExpandProperty data | ForEach-Object { $_.email }

# Example 2: GET with Invoke-RestMethod
# $result = Invoke-RestMethod -Method Get -Uri "$baseUrl/api/users?page=2" -Headers $headers
# $result.GetType().FullName
# $result.data[0]

# Example 3: POST with Invoke-RestMethod
# $newUser  = @"
# {
#     "name": "Kurt K",
#     "job": "software guy"
# }
# "@
# Invoke-RestMethod -Method Post -Uri "$baseUrl/api/v3/users" -Headers $headers -Body $newUser