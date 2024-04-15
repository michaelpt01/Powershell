param(
    [Parameter(Mandatory=$true)]
    [string]$RootPath,
    [Parameter(Mandatory=$true)]
    [string]$OutputCSV
)

function Get-LastModifiedDate($Path) {
    $lastModified = (Get-Item $Path).LastWriteTime

    Get-ChildItem $Path -Recurse -Directory | ForEach-Object {
        $childLastModified = Get-LastModifiedDate $_.FullName
        if ($childLastModified -gt $lastModified) {
            $lastModified = $childLastModified
        }
    }

    return $lastModified
}

$results = Get-ChildItem $RootPath -Directory | ForEach-Object {
    $folderName = $_.Name
    $lastModified = Get-LastModifiedDate $_.FullName

    [PSCustomObject]@{
        FolderName = $folderName
        LastModified = $lastModified
    }
}

$results | Export-Csv -Path $OutputCSV -NoTypeInformation
