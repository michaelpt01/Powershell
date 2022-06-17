#Logon Audit

Get-ADComputer -Searchbase "DomainOU"  -Filter {name like *computername*} -Properties Name, OperatingSystemVersion, lastlogonTimeStamp, Enabled, Location | Select Name, OperatingSystemVersion, @{Name="LastLogonDate"; Expression={[DAteTime]::FromFile($_.lastlogontimestamp)}}, Enabled, Location| sort lastlogontimestamp