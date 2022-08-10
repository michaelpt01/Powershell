$computers = 'W16DSC01', 'W16DSC02'
Invoke-Command -ScriptBlock {Get-HotFix -Id KB3213986} `
-ComputerName $computers |
Format-Table HotFixId, InstalledOn, PSComputerName -AutoSize

