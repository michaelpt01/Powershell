# Define the root directory to crawl
$rootDir = "C:\YourRootDirectory"

# Define the path for the CSV export
$exportPath = "C:\path\to\your\export.csv"

# Initialize a list to hold the directory info
$directoryInfo = @()

# Get all child directories under the root directory
$directories = Get-ChildItem -Path $rootDir -Recurse -Directory

foreach ($dir in $directories) {
    # Get the most recent LastWriteTime among all files in the current directory
    $mostRecentFile = Get-ChildItem -Path $dir.FullName -File | Sort-Object LastWriteTime -Descending | Select-Object -First 1

    # If the directory has files, compare the directory's last write time with the most recent file's last write time
    if ($mostRecentFile -ne $null) {
        if ($mostRecentFile.LastWriteTime -gt $dir.LastWriteTime) {
            $lastModified = $mostRecentFile.LastWriteTime
        } else {
            $lastModified = $dir.LastWriteTime
        }
    } else {
        $lastModified = $dir.LastWriteTime
    }

    # Create a custom object with the directory's full name and its most recent modification time
    $obj = [PSCustomObject]@{
        FullName      = $dir.FullName
        LastWriteTime = $lastModified
    }
    
    # Add the custom object to the list
    $directoryInfo += $obj
}

# Export the information to a CSV file
$directoryInfo | Export-Csv -Path $exportPath -NoTypeInformation

Write-Host "Export completed successfully."