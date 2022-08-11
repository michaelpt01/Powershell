$p = gci -Recurse | where-object {$_.LastAccessTime -lt (Get-Date).AddDays(-90)} | Select-Object Directory,Name,CreationTime,LastAccessTime,Length,Extension
