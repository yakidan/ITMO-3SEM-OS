echo %computername%
md C:\temp
net share temp="C:\temp"
net use * \\%computername%\temp