forfiles /P "C:\Windows" /C "cmd /c if @fsize GEQ 2097153 copy @path \\%computername%\temp /Z"