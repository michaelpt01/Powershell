#Script to Determine Free/Remaining Drive Space
#Author: Michael Thornton
#Date: 17JUL19

Write-Host ******Storage Metrics*********************** 

$capacity = Get-PSDrive C | Select-Object -Property Free, Used
$capacityFree = ($capacity.Free)/1GB
$capacityUsed= ($capacity.Used)/1GB
$roundedFree = [math]::Round($capacityFree)
$roundedUsed = [math]::Round($capacityUsed) 
Write-Host "C: Drive has approx." $roundedFree -ForegroundColor green "GB of storage left."
Write-Host "C: Drive has approx."$roundedUsed -ForegroundColor Red "GB of storage used."

$oneDrive=(Get-ChildItem C:\Users\Michael\OneDrive -Recurse | measure -Property Length -Sum).sum/1Gb
$roundedOnedDrive = [math]::Round($oneDrive)

if($roundedFree -le 100){""
Write-Host "****Consider adding additional local storage.*****"-ForegroundColor DarkYellow

}
""
Write-Host "Current Local OneDrive Usage is approx:"$roundedOnedDrive"GB" -ForegroundColor DarkCyan