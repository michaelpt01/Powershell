$name = $args

Function SendMsg()

{do{
Clear-Host
$name = Read-Host “Enter Your Message”
Clear-Host
try
{
   Invoke-WmiMethod -Path Win32_Process -Name Create -ArgumentList “msg* $msg” -ComputerName $name -ErrorAction Stop

}

Catch
{
Write-Host “An error occurred.”
Write-Host “Let’s restart the script. Press any key.”
$HOST.UI.RawUI.ReadKey(“NoEcho,IncludeKeyDown”) | Out-Null
$HOST.UI.RawUI.FlushInputbuffer()
SendMsg
}

Clear-Host
Write-Host “Message was sent and will be visible for 60 seconds.”
Write-Host “Press any key to continue.”
$HOST.UI.RAWUI.Readkey(“NoEcho,IncludeKeydown”) | Out-NULL

Clear-Host
$again = Read-Host “Press Enter to Send Another Message (or Ctrl+C to exit)”
}while ($again -eq “”)}

SendMsg
Exit