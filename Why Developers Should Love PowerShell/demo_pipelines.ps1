# Pipelines with complex objects

# # Example 1: Measuring the CD library
# [xml]$cdLib = Get-Content .\cd_catalog.xml
# $cdLib.catalog.CD | Select-Object -ExpandProperty Year | Measure-Object -AllStats

# Example 2: Grouping Places by Location
#$placesJson = Get-Content .\places.json
#$groupedPlaces = $placesJson | ConvertFrom-Json | ForEach-Object {$_} | Select-Object -ExpandProperty Address | Group-Object -Property City, State, PostalCode
#$groupedPlaces | Select-Object -Property Name, Count | Sort-Object -Property Count -Descending