$computers = Get-Content -Path C:\users\file\path\.txt
$result = 
foreach($computer in $computers){
Get-WmiObject -Class Win32_ComputerSystem -ComputerName $computer
}

$result = Export-CSV -Path C:\users\public\folder\file.csv