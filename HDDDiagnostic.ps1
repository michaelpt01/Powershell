$comptuters = Get-Content -path \\server\folder\file
foreach($computer in $computers){
Get-WmiObject -ComputerName $computer -class win32_diskdrive | Select-Object PSComputerName, Status, Size, Partition, MediaLoaded, BytesPerSector, LastErrorCode
}

pause


