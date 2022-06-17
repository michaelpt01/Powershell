$answer = Read-Host "Enter UNC Path"
$totalStorage = (gci $answer -recurse | Measure-Object -Property Length -Sum).sum/1GB
Write-Host "You have $totalStorage GB stored in :` $answer"
