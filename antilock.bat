@echo off
setlocal enableextensions
setlocal enabledelayedexpansion
chcp 65001 >nul
title Anti Lock

:green
cls
echo                 [1;92m^/^|  ^/^|  ---------------------------[0m
echo                 [1;92m^|^|__^|^|  ^|                         ^|[0m
echo                [32m^/   O O^\__  Welcome to Anti Lock   ^|[0m
echo               [32m^/          ^\                        ^|[0m
echo              [1;92m^/      ^\     ^\                       ^|[0m
echo             [1;92m^/   _    ^\     ^\ ----------------------[0m
echo            [32m^/    ^|^\____^\     ^\      ^|^|[0m
echo           [32m^/     ^| ^| ^| ^|^\____^/      ^|^|[0m
echo          [1;92m^/       ^\^| ^| ^| ^|^/ ^|     __^|^|[0m
echo         [1;92m^/  ^/  ^\   -------  ^|_____^| ^|^|[0m
echo        [32m^/   ^|   ^|           ^|       --^|[0m
echo        [32m^|   ^|   ^|           ^|_____  --^|[0m
echo        [1;92m^|  ^|_^|_^|_^|          ^|     ^\----[0m
echo        [1;92m^/^\                  ^|[0m
echo       [32m^/ /^\        ^|        ^/[0m
echo      [32m^/ ^/  ^|       ^|       ^|[0m
echo  [1;92m___^/ ^/   ^|       ^|       ^|[0m
echo [1;92m^|____^/    c_c_c_C/ \C_c_c_c[0m
timeout /t 2 /nobreak >nul
cls
goto start

:start
echo.
echo  █████╗ ███╗   ██╗████████╗██╗    ██╗      ██████╗  ██████╗██╗  ██╗
echo ██╔══██╗████╗  ██║╚══██╔══╝██║    ██║     ██╔═══██╗██╔════╝██║ ██╔╝
echo ███████║██╔██╗ ██║   ██║   ██║    ██║     ██║   ██║██║     █████╔╝
echo ██╔══██║██║╚██╗██║   ██║   ██║    ██║     ██║   ██║██║     ██╔═██╗
echo ██║  ██║██║ ╚████║   ██║   ██║    ███████╗╚██████╔╝╚██████╗██║  ██╗
echo ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝    ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝
echo.
echo Version: 1.0.0
echo Author: Barry Jensen
echo https://github.com/barryjensen-dev/Anti-Lock
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
    echo Version: 1.0.0
    echo Author: Barry Jensen
    echo https://github.com/barryjensen-dev/Anti-Lock
    echo.
    timeout /t 5 >nul
)
goto check_process
goto start