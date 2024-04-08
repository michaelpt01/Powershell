# Path to the CSV file
$csvPath = "C:\path\to\users.csv"

# Import the CSV file
$users = Import-Csv -Path $csvPath

# Iterate through each row in the CSV
foreach ($user in $users) {
    $FirstName = $user.FirstName
    $LastName = $user.LastName

    # Search for the user in Active Directory
    $adUsers = Get-ADUser -Filter "GivenName -eq '$FirstName' -and Surname -eq '$LastName'" -Properties Mail

    # Check if any users were found
    if ($adUsers) {
        foreach ($adUser in $adUsers) {
            Write-Output "Email address for $FirstName $LastName: $($adUser.Mail)"
        }
    } else {
        Write-Output "User $FirstName $LastName not found."
    }
}
