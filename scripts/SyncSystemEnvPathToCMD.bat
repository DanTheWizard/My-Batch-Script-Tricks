REM Get the reg value of latest path variable and set it to the variable latestPath
for /f "tokens=2,*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path 2^>nul ^| findstr /r /c:"Path "') do (
    set latestPath="%%b"
)

REM Conver the % in the text to actual variables as it is detected as a string %SystemRoot% (as if we are doing echo ^%SystemRoot^%) by echoing it into a new variabke
for /f "delims=" %%i in ('echo %latestpath%') do set fixpath=%%i


REM Remove the Quotes from beginning and end
set cleanpath=%fixpath:~1,-1%

REM Set the current shell's path variable to that new path
set "PATH=%cleanpath%"
