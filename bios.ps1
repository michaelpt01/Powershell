do {
$system = Read-Host “System Name:”8
Get-WmiObject -class win32_bios -computername $system
$anwswer = Read-Host “Would you like to check the BIOS of another system?”}

while($answer -ne “no”)


}