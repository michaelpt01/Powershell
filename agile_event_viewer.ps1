param(
[parameter(mandatory = $true)]$Logname,
[parameter(mandatory = $true)]$Level,
[parameter(mandatory = $true)]$Newest
)

$computers = Get-Content \\server\folder\file

$values = foreach($computer in $computers){

Get-EventLog -ComputerName $computer -LogName $Logname -newest $Newest -EntryType $Level | Select-Object MachineName, Category, EntryType, Source, Message, TimeWritten

} 

$values | ogv
