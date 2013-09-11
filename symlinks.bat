rem todo:
rem create efficient way of looping for all commands
rem symlink emulator save directories to dropbox

echo off
cls

set base=D:\games\emu
set launchers=%userprofile%\Dropbox\git\ahk-emulauncher\
set compiler="%programfiles%\AutoHotkey\Compiler\Ahk2Exe.exe"

if not exist %base% echo %base% not found, exiting.
if not exist %base% pause
if not exist %base% exit

set emu=desmume
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"

set emu=dolphin
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"

set emu=dosbox
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"

set emu=mednafen
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"

set emu=nulldc
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"

set emu=pcsx2
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"

set emu=ppsspp
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"
rem PSP DLC Symlink
if exist "%base%\%emu%\memstick\PSP\GAME" rd /s /q "%base%\%emu%\memstick\PSP\GAME%
mklink /D "%base%\%emu%\memstick\PSP\GAME" "%base%\..\psp\dlc"

set emu=project64
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"

set emu=yabause
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"

pause
exit
