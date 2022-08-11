$p = gci -Recurse | Where-Object {$_.LastAccessTime -gt (Get-Date).AddDays(-90)} | Select-Object Directory, Name, CreationTime, LastAccessTime, Length, Extension
