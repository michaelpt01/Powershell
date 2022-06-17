New-ADUser Michael -AccountExpirationDate 1/29/2020  -Office Richmond -City Hopewell -Title "Desktop Support Engineer" 
$pw = Read-Host "What Password Do You Want to Enter?" -AsSecureString
Set-ADPassword Michael -NewPassword $pw
Enable-ADAccount Michael
