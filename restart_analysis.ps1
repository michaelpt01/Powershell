$computer = Get-Content -Path \\server\folder\file.txt

foreach($computer in $computers){
(Get-EventLog -newest 1 -logname system - source "user32" -computername $computer -ErrorAction Silently Continue | Select-Object -Property MachineName, TimeWritten, Message)
}

pause