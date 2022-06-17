#Author: Michael Thornton
#Retrieve Application Version Using WMI

Write-Host "********************************************************"
Write-Host "This Script Will Provide The Current Application Version"
Write-Host "********************************************************" `n

do{
$computer = Read-Host "Please Enter System Name"
Get-WmiObject -Class Win32_Product -Property Description, Version, InstallDate -ComputerName $computer | ogv
$answer= Read-Host "Would you like to enter another system(y/n)?"
}
while($answer -ne 'n')