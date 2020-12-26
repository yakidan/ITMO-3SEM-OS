::1
echo %computername%
md C:\temp
net share temp="C:\temp"
net use * \\%computername%\temp

::2
forfiles /P "C:\Windows" /C "cmd /c if @fsize GEQ 2097153 copy @path \\%computername%\temp /Z"

::3
schtasks /CREATE /SC Minute /TN CopyPast /TR "./command3.cmd"

::4
schtasks /del /TN CopyPast 

::6
forfiles /P "C:\Windows" /C " cmd /c if @fsize GEQ 2097153 copy @path \\%computername%\temp /Z"