#Unlock User Accounts
Import-Module ActiveDirectory
 do {
 $user = Read-Host "What is the user account that needs to be unlocked"|  Unlock-ADAccount
 $answer = Read-Host "Would you like to unlock another account: yes/no"
   }
 
 while($answer -ne 'no')
