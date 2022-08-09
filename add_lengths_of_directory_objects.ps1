$total = 0
Get-ChildItem | ForEach-Object {$total += $_.length }
$total
