@echo off
mode con cols=55 lines=10
title SteamµÇÂ¼´íÎóÐÞ¸´¹¤¾ß -  Cangshui.net

setlocal
set uac=~uac_permission_tmp_%random%
md "%SystemRoot%\system32\%uac%" 2>nul
if %errorlevel%==0 ( rd "%SystemRoot%\system32\%uac%" >nul 2>nul ) else (
    echo set uac = CreateObject^("Shell.Application"^)>"%temp%\%uac%.vbs"
    echo uac.ShellExecute "%~s0","","","runas",1 >>"%temp%\%uac%.vbs"
    echo WScript.Quit >>"%temp%\%uac%.vbs"
    "%temp%\%uac%.vbs" /f
    del /f /q "%temp%\%uac%.vbs" & exit )
endlocal

"%~dp0Steam_login_error_tool.exe" -type=steam

echo ÐÞ¸´Íê³É
ping 127.0.0.1 > NULL
cls