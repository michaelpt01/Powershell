#Import CSV File to Create User Accounts/Add To Specific OU. 
#Feb 11, 2019
Import-Csv ".\RicmondUsers.csv" | New-Aduser -AccountPassword $(ConvertTo-SecureString "EverQuest24me123!!!" -AsPlainText -force) -ChangePasswordAtLogon $true -Enabled $true -Path "OU=Users,OU=Richmond,DC=Cardinal, DC=Local" -CannotChangePassword $true