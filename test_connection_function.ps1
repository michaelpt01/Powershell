function testConnectivity{
$answer = Read-Host "Do you want to test connectivity for one or more systems? Please Select s/m"
if($answer -eq 'm'){
$fileLocation = Read-Host "Enter the path to the text file you wish to check connectivity for"
$computers = Get-Content -Path $fileLocation
foreach($computer in $computers){
if(Test-Connection -ComputerName $computer -count 1 -ErrorAction SilentlyContinue -TimeToLive 5)
{Write-Host "Online`t$computer"
}
}
else{ 
Write-Host "OFFLINE't$computer"
}
}
else {
$system = Read-Host "Please enter system name"
if(Test-Connection -ComputerName $system -count 1 -ErrorAction SilentlyContinue -TimeToLive 5){
Write-Host "$system is Online"}

else {
Write-Host "$system is OFFLINE"
}
}
}


function restartSystem{
$restartQuest = Read-Host “Do you want to restart one or more systems? Please select S/M”
if($restartQuest -eq ‘m’){
$restartLocation = Read-Host “Enter the path to the text file you wish to check connectivity for”
$restartComputers = Get-Content -Path $restartLocation
foreach($restartComputer in $restartComputers){
Restart-Computer -ComputerName $restartComputer
Write-Host “Systems Have Been Restarted”
}
}
else{
$computer = Read-Host “Please enter system name”
Restart-Computer -ComputerName $computer
}
}

function testShare{


}