rem todo:
rem verify windows 7 and file paths
rem create efficient way of looping for all commands
rem batch compile ahk scripts

set base=D:\games\emu
set launchers=%userprofile%\Documents\GitHub\ahk-emulauncher\


set emu=desmume
if exist "%base%\%emu%\launcher.ahk" del "%base%\%emu%\launcher.ahk"&&mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"

set emu=dolphin
if exist "%base%\%emu%\launcher.ahk" del "%base%\%emu%\launcher.ahk"&&mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"

set emu=dosbox
if exist "%base%\%emu%\launcher.ahk" del "%base%\%emu%\launcher.ahk"&&mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"

set emu=mednafen
if exist "%base%\%emu%\launcher.ahk" del "%base%\%emu%\launcher.ahk"&&mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"

set emu=nulldc
if exist "%base%\%emu%\launcher.ahk" del "%base%\%emu%\launcher.ahk"&&mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"

set emu=pcsx2
if exist "%base%\%emu%\launcher.ahk" del "%base%\%emu%\launcher.ahk"&&mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"

set emu=ppsspp
if exist "%base%\%emu%\launcher.ahk" del "%base%\%emu%\launcher.ahk"&&mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"

set emu=project64
if exist "%base%\%emu%\launcher.ahk" del "%base%\%emu%\launcher.ahk"&&mklink "%base%\%emu%\launcher.ahk" "%launchers%\%emu%.ahk"

pause