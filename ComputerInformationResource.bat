@echo off
TITLE COMPUTER INFO

:menu
cls
echo =============
echo COMPUTER INFO
echo =============
echo [1] Windows Version
echo [2] System Info
echo [3] IP Config
echo [4] Task List
echo [5] Exit
echo.

CHOICE /C 12345 /N /M "Select an option: "

IF ERRORLEVEL 5 GOTO exit
IF ERRORLEVEL 4 GOTO tasklist
IF ERRORLEVEL 3 GOTO ipconfig
IF ERRORLEVEL 2 GOTO systeminfo
IF ERRORLEVEL 1 GOTO windowsversion


:windowsversion
cls
ver
echo.
pause
goto menu

:systeminfo
cls
systeminfo
echo.
pause
goto menu

:ipconfig
cls
ipconfig
echo.
pause
goto menu

:tasklist
cls
tasklist
echo.
pause
goto menu

:exit
exit
