#shrink partition
Get-PartitionSupportedSize -DriveLetter C Resize-Partition -DriveLetter ‘C’  -Size 30GB
