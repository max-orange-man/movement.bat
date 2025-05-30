@echo off
setlocal enableextensions enabledelayedexpansion
title Movement
color f

set x=
set y=

:controls
cls

for %%a in (%y%) do echo.
echo %x%[]

choice /c wasd /n
if %errorlevel%==1 call:up
if %errorlevel%==2 call:left
if %errorlevel%==3 call:down
if %errorlevel%==4 call:right

:up
set y=!y:~0,-2!
goto controls

:left
set x=!x:~0,-1!
goto controls

:down
set y=a %y%
goto controls

:right
set x= %x%
goto controls