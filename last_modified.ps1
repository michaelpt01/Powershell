$RootPath = "\\fileserver\share"
$OutputCSV = "C:\output\folder_last_modified.csv"

$results = Get-ChildItem $RootPath -Directory | ForEach-Object {
    $folderName = $_.Name
    $lastModified = $_.LastWriteTime

    Get-ChildItem $_.FullName -Recurse -Directory | ForEach-Object {
        if ($_.LastWriteTime -gt $lastModified) {
            $lastModified = $_.LastWriteTime
        }
    }

    [PSCustomObject]@{
        FolderName = $folderName
        LastModified = $lastModified
    }
}

$results | Export-Csv -Path $OutputCSV -NoTypeInformation
