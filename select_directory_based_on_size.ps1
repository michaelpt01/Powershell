$a = Get-ChildItem| sort -Property length -Descending |
Select-Object -First 1 -Property Directory
