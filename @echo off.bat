@echo off
setlocal EnableDelayedExpansion

REM Get a random HWID from system components
set "HWID="
for /f "skip=1 delims=" %%a in ('wmic csproduct get UUID') do if not defined HWID set "HWID=%%a"
if not defined HWID (
    echo Failed to retrieve HWID.
    exit /b 1
)

REM Create registration key with the HWID
set "RegKey=HWID: %HWID%"
echo %RegKey%

REM You can use %RegKey% variable further for your purposes
pause