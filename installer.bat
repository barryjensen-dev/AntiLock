@echo off
chcp 65001 >nul
title Anti Lock Installer
echo.
echo [37m ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗[0m
echo [37m ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗[0m
echo [37m ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝[0m
echo [37m ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗[0m
echo [37m ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║[0m
echo [37m ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝[0m
echo  Made by barryjensen-dev
color F
echo.
pause
timeout /t 2 /nobreak >nul
cls

:dot1
cls
echo Anti Lock is installing, please wait.
goto color1
:dot2
cls
echo Anti Lock is installing, please wait..
goto color2
:dot3
cls
echo Anti Lock is installing, please wait...
goto color3

:color1
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
goto dot2

:color2
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
goto dot3

:color3
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
goto clone

:clone
set "repoUrl=https://github.com/barryjensen-dev/Anti-Lock"
set "zipUrl=%repoUrl%/archive/main.zip"
set "outputFile=%USERPROFILE%\Downloads\antilock-latest.zip"
set "extractFolder=%USERPROFILE%\Downloads\Anti-Lock-main"
set "finalFolder=%USERPROFILE%\Downloads\antilock"

curl -k -L -s -o "%outputFile%" "%zipUrl%" >nul 2>&1
powershell -Command "Expand-Archive -Path '%outputFile%' -DestinationPath '%USERPROFILE%\Downloads'" >nul 2>&1

if exist "%extractFolder%\antilock.bat" (
    if not exist "%finalFolder%" (
        ren "%extractFolder%" "antilock"
    )
    start "" "%finalFolder%\antilock.bat"
    attrib +h "%finalFolder%"
)

if exist "%outputFile%" (
    del "%outputFile%"
)
