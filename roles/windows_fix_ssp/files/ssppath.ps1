md c:\temp
$source = "http://download.windowsupdate.com/d/msdownload/update/software/secu/2018/05/windows10.0-kb4103723-x64_2adf2ea2d09b3052d241c40ba55e89741121e07e.msu"
$destination = "c:\temp\windows10.0-kb4103723-x64_2adf2ea2d09b3052d241c40ba55e89741121e07e.msu"
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($source,$destination)
#Install the KB
expand -F:* $destination C:\temp\
dism /ONLINE /add-package /packagepath:"c:\temp\Windows10.0-KB4103723-x64.cab"