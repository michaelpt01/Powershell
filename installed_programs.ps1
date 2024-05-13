Here's a PowerShell script that returns a list of all programs installed on a Windows PC:

```powershell
# Get all installed programs from the registry
$installedPrograms = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | 
                      Select-Object DisplayName, DisplayVersion, Publisher, InstallDate

# Get all installed programs from the registry (64-bit programs)
$installedPrograms += Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | 
                       Select-Object DisplayName, DisplayVersion, Publisher, InstallDate

# Remove entries with null DisplayName
$installedPrograms = $installedPrograms | Where-Object { $_.DisplayName -ne $null }

# Sort the list by DisplayName
$installedPrograms = $installedPrograms | Sort-Object DisplayName

# Display the list of installed programs
$installedPrograms | Format-Table -AutoSize
```

This script does the following:

1. It retrieves all installed programs from the registry using the `Get-ItemProperty` cmdlet. It queries the registry keys where information about installed programs is stored (`HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*` for 32-bit programs and `HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*` for 64-bit programs).

2. It selects the relevant properties of each program, such as `DisplayName`, `DisplayVersion`, `Publisher`, and `InstallDate`, using the `Select-Object` cmdlet.

3. It combines the results from both registry locations into a single variable `$installedPrograms` using the `+=` operator.

4. It removes any entries with a null `DisplayName` using the `Where-Object` cmdlet to filter out invalid or incomplete entries.

5. It sorts the list of installed programs alphabetically by `DisplayName` using the `Sort-Object` cmdlet.

6. Finally, it displays the list of installed programs in a formatted table using the `Format-Table` cmdlet with the `-AutoSize` parameter to adjust the column widths automatically.

When you run this script in PowerShell, it will output a table containing the names, versions, publishers, and install dates of all the programs installed on your Windows PC.​​​​​​​​​​​​​​​​