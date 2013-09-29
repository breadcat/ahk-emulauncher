rem Emulator Launcher Compiler and Symlink Creator
rem Requires Windows 7 mklink utility and a *very* specific folder structure
rem Will also mercilessly delete existing save data, use with care

rem todo:
rem dosbox, yabause savegame symlinks

rem Environment
echo off
cls

rem Variables
set base=D:\games\#Emulators
set launchers=%userprofile%\Dropbox\git\ahk-emulauncher
set compiler="%programfiles%\AutoHotkey\Compiler\Ahk2Exe.exe"
set savedir=%userprofile%\Dropbox\saves\emulators

rem Preliminary check to prevent a trainload of problems
if not exist %base% echo %base% not found, exiting.
if not exist %base% pause
if not exist %base% exit

set emu=desmume
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"
rem Save game symlink
if exist "%base%\%emu%\Battery" rd /s /q "%base%\%emu%\Battery"
mklink /D "%base%\%emu%\Battery" "%savedir%\%emu%\"

set emu=dolphin
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"
rem Save game symlink
if exist "%base%\%emu%\User\GC" rd /s /q "%base%\%emu%\User\GC"
if exist "%base%\%emu%\User\Wii" rd /s /q "%base%\%emu%\User\Wii"
mklink /D "%base%\%emu%\User\GC" "%savedir%\%emu%-gc"
mklink /D "%base%\%emu%\User\Wii" "%savedir%\%emu%-wii"

set emu=dosbox
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"

set emu=mednafen
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"
rem Save game symlink
if exist "%base%\%emu%\sav" rd /s /q "%base%\%emu%\sav"
mklink /D "%base%\%emu%\sav" "%savedir%\%emu%"

set emu=nulldc
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"
rem VMU symlink
if exist "%base%\%emu%\vmu_data_port01.bin" del "%base%\%emu%\vmu_data_port01.bin"
mklink "%base%\%emu%\vmu_data_port01.bin" "%savedir%\%emu%\vmu_data_port01.bin"

set emu=pcsx2
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"
rem Save game symlink
if exist "%base%\%emu%\memcards" rd /s /q "%base%\%emu%\memcards"
mklink /D "%base%\%emu%\memcards" "%savedir%\%emu%\"

set emu=ppsspp
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"
rem DLC symlink
if exist "%base%\%emu%\memstick\PSP\GAME" rd /s /q "%base%\%emu%\memstick\PSP\GAME%
mklink /D "%base%\%emu%\memstick\PSP\GAME" "%base%\..\Sony PlayStation Portable\dlc"
rem Save game symlink
if exist "%base%\%emu%\memstick\PSP\SAVEDATA" rd /s /q "%base%\%emu%\memstick\PSP\SAVEDATA"
mklink /D "%base%\%emu%\memstick\PSP\SAVEDATA" "%savedir%\%emu%"

set emu=project64
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"
rem Save game symlink
if exist "%base%\%emu%\Save" rd /s /q "%base%\%emu%\Save"
mklink /D "%base%\%emu%\Save" "%savedir%\%emu%"

set emu=yabause
if exist "%base%\%emu%\launcher.*" del "%base%\%emu%\launcher.*"
mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"
%compiler% /in "%emu%.ahk" /out "%base%\%emu%\launcher.exe"

pause
exit
