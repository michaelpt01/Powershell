$computers = Get-content C:\Temp\computers.txt
Foreach ($computer in $computer)
{
Get-ChildItem -path "\\$computer\c$\Windows\System32" -File "XXXX" -ErrorAction SilentlyContinue | Remove-Item
}