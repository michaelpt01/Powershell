$computers = Get-Content - path \\server\folder\file.txt
foreach ($computer in $computers) {
Restart-Computer -ComputerName $computer
}