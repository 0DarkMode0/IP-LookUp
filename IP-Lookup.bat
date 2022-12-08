@echo off
title IP-LookUp  -  Created By DarkMode
chcp 65001 >nul 2>&1
mode 55,10
color 09

:IP-Lookup
cls
chcp 65001 >nul 2>&1
echo.
echo         _______      __             __   __  __   
echo        /  _/ _ \____/ /  ___  ___  / /__/ / / /__ 
echo       _/ // ___/___/ /__/ _ \/ _ \/  '_/ /_/ / _ \
echo      /___/_/      /____/\___/\___/_/\_\\____/ .__/
echo                                            /_/    
chcp 850 >nul 2>&1
echo.
set/p IP=">: "
cls
cd C:\
del /f /q IP-Lookup.txt
curl -s ipinfo.io/%IP%?token=aa4846660ce66e>>IP-Lookup.txt
cls
mode 55,15
chcp 65001 >nul 2>&1
echo.
echo.
type IP-Lookup.txt
pause >nul 2>&1
goto IP-Lookup
