Set-location C:\powershell\presentations

[xml]$cds = Get-Content .\cd_catalog.xml

"There are $($cds.catalog.cd.Count) CDs in my catalog"

[int]$matches = 0

# TODO: output any cds from the 80s
# TODO: find bob dylan cds

# foreach($cd in $cds.catalog.cd){
# 	if($cd.year -ge 1980 -and $cd.year -le 1989 -and $cd.ARTIST -like "*dylan"){
# 		$cd
# 		$matches++
# 	}
# }

# "$matches matches for the conditions"

# TODO: mention match/notmatch
# TODO: whatif for destructive actions

# $cds.CATALOG.CD | Where-Object { $_.artist -like "*dylan" } | Select-Object -Property title