Get-AdComputer -Filter {name -like "*mycomputer*"} -Property * | Sort-Object Name | Format-Table Name, Operating System, OperatingSystemVersion -auto
