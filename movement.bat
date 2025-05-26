@echo off
setlocal enableextensions enabledelayedexpansion
title Movement
color f

set length=
set height=

:controls
cls

for %%a in (%height%) do echo.
echo %length%[]

choice /c wasd /n
if %errorlevel%==1 call:up
if %errorlevel%==2 call:left
if %errorlevel%==3 call:down
if %errorlevel%==4 call:right

:up
set height=!height:~0,-2!
goto controls

:left
set length=!length:~0,-1!
goto controls

:down
set height=a %height%
goto controls

:right
set length= %length%
goto controls
