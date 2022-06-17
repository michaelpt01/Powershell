New-ADUser -Company:"BB&T" -Department:"Operations" -DisplayName:"Heather S. Thornton" -GivenName:"Heather" -Initials:"S" -Name:"Heather S. Thornton" -Path:"CN=Users,DC=cardinal,DC=local" -SamAccountName:"hthornton" -Server:"RedBird.cardinal.local" -Surname:"Thornton" -Title:"Operations Manager" -Type:"user" -UserPrincipalName:"hthornton@cardinal.local"

Set-ADAccountPassword -Identity:"CN=Heather S. Thornton,CN=Users,DC=cardinal,DC=local" -NewPassword:"System.Security.SecureString" -Reset:$true -Server:"RedBird.cardinal.local"

Enable-ADAccount -Identity:"CN=Heather S. Thornton,CN=Users,DC=cardinal,DC=local" -Server:"RedBird.cardinal.local"