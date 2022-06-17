##Search for Disabled Domain Computer Accounts

Search-ADAccount -AccountDisabled -ComputersOnly -SearchBase "Domain" | select name, enabled |ogv
pause