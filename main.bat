@echo off
setlocal enableextensions
chcp 65001 >nul
title Anti Lock

:start
echo.
echo  █████╗ ███╗   ██╗████████╗██╗    ██╗      ██████╗  ██████╗██╗  ██╗
echo ██╔══██╗████╗  ██║╚══██╔══╝██║    ██║     ██╔═══██╗██╔════╝██║ ██╔╝
echo ███████║██╔██╗ ██║   ██║   ██║    ██║     ██║   ██║██║     █████╔╝
echo ██╔══██║██║╚██╗██║   ██║   ██║    ██║     ██║   ██║██║     ██╔═██╗
echo ██║  ██║██║ ╚████║   ██║   ██║    ███████╗╚██████╔╝╚██████╗██║  ██╗
echo ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝    ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝
echo.
echo Version: 1.0
echo Author: Barry Jensen
echo https://github.com/barryjensen-dev/AntiLock
echo.
goto color

:color
color 1
color 2
color 3
color 4
color 5
color 6
color 9
color A
color B
color C
color D
color E
color F
goto process

:process
set "processName=ClassroomWindows.exe"

:check_process
tasklist /FI "IMAGENAME eq %processName%" | find /I "%processName%" >nul
if %errorlevel% equ 0 (
    echo The process %processName% is running. Terminating it...
    taskkill /F /IM %processName%
    echo Process terminated.
    color 1
    color 2
    color 3
    color 4
    color 5
    color 6
    color 9
    color A
    color B
    color C
    color D
    color E
    color F
) else (
    echo The process %processName% is not running. Waiting for it to start...
    cls
    echo.
    echo  █████╗ ███╗   ██╗████████╗██╗    ██╗      ██████╗  ██████╗██╗  ██╗
    echo ██╔══██╗████╗  ██║╚══██╔══╝██║    ██║     ██╔═══██╗██╔════╝██║ ██╔╝
    echo ███████║██╔██╗ ██║   ██║   ██║    ██║     ██║   ██║██║     █████╔╝
    echo ██╔══██║██║╚██╗██║   ██║   ██║    ██║     ██║   ██║██║     ██╔═██╗
    echo ██║  ██║██║ ╚████║   ██║   ██║    ███████╗╚██████╔╝╚██████╗██║  ██╗
    echo ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝    ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝
    echo.
    echo Version: 1.0
    echo Author: Barry Jensen
    echo https://github.com/barryjensen-dev/AntiLock
    echo.
    timeout /t 5 >nul
)
goto check_process
goto start
