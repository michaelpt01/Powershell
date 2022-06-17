Get-ADComputer -SearchBase “OU” -Filter {name -like “*myname*”} -Properties Name, OperatingSystemVersion, lastlogonTimeStamp, Enabled, Location | select Name, OperatingSystemVersion, @{Name=“LastLogonDate”; Expression = {[DateTime]::FromFileTime($_.LastLogonTimeStamp)}}, Enabled, Location | sort lastlogontimestamp
pause

