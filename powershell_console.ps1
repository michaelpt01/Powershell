Write-Host “Hello, and Welcome to the Agile Shell”
Write-Host “Please select an option to start”

##Place a list of functions here and call them from the switch interface

function testConnectivity{
$answer = Read-Host “Do you want to test one system or multiple, please enter Single/Multiple”
if($answer -eq Multiple){


}

$computers = Get-Content -Path \\server\folder\file.txt
foreach ($computer in $computers) {


if (Test-Connection -ComputerName $computer  -count 1 ea SilentlyContinue -TimeToLive ){
Write-Host "Online`t$computer"
}
else{
Write-Host "OFFLINE't$computer"}
}

pause
$computers = Get-Content - path \\server\folder\file.txt

}

switch($decision){
1 {funtion   testConnectivity}
2 {function  restartAnalysis]
3 {function  resourceUtilization}
4 {function  accountLock}
5 {function  websiteAvailability}
6 {function  recentHotfixes}
7 {function  analyzeProcesses}
8 {function  eventLog}
9 {function  currentUser}
10{function  unlockUser}
11{function  shareConnectivity}
12{function  computerLogonAudit} 
13{function  restartSystems}
14{function  messageMultipleSystems}
}

#Each function will have parameters and option to pipe out the data to either the console or an html file for review. 
