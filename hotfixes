#hotfixes
$computers = Get-Content -path \\server\folder\file.txt

foreach ($computer in $computers) {
Get-Hotfix -computerName $computer | Select-Object PSComputerName, HotFixID, InstalledOn, Description
