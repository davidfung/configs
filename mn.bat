@echo off
if "%1"=="" goto usage
goto main

:usage
echo ------------------------------------------
echo 1 - xxx
echo 2 - xxx
echo ------------------------------------------
goto end

:main
if "%1"=="0" goto F0
if "%1"=="1" goto F1
if "%1"=="2" goto F2
if "%1"=="3" goto F3
if "%1"=="4" goto F4
if "%1"=="5" goto F5
if "%1"=="6" goto F6
if "%1"=="7" goto F7
if "%1"=="8" goto F8
if "%1"=="9" goto F9
goto end

:F0
notepad "c:\program files\bin\mn.bat"
goto end

:F1
goto end

:F2

goto end

:F3
goto end

:F4
goto end

:F5
goto end

:F6
goto end

:F7
goto end

:F8
goto end

:F9
goto end

:end

