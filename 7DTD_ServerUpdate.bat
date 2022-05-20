@echo off
rem --------------------------------------------------
rem Settings
rem --------------------------------------------------
rem Specify the path where the server will be
set GameFolder=D:\7DTD
rem --------------------------------------------------
rem Specify the path to steamcmd
set steamcmd=D:\ServerUpdate\steamcmd\steamcmd.exe
rem --------------------------------------------------
rem Specify game version (https://steamdb.info/app/294420/depots/)
set version=alpha20.3
rem --------------------------------------------------

:m1
echo 7 Days To Die Updata Server v0.0.1
Echo --------------------------------------------------------
Echo Select function:
Echo.
Echo 1 - Stable Version
Echo 2 - Beta version
Echo 3 - Info Beta version
Echo 4 - Game Server Folder
Echo 5 - Exit
Echo --------------------------------------------------------
Set /p choice="Your choice: "
Echo --------------------------------------------------------
if not defined choice goto m1
if "%choice%"=="1" (%steamcmd% +login anonymous +force_install_dir %GameFolder% +app_update 294420 -validate)
if "%choice%"=="2" (%steamcmd% +login anonymous +force_install_dir %GameFolder% +app_update 294420 -beta %version% -validate)
if "%choice%"=="3" (echo %version%)
if "%choice%"=="4" (echo %GameFolder%)
if "%choice%"=="5" (exit)
Echo --------------------------------------------------------
goto m1
pause >nul