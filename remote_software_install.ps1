#install software remotely
Invoke-Command -ComputerName -server01 -ScriptBlock { C:\software\installer.exe /silent}
