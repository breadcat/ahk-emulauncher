;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, dolphin.exe /b /e "%1%"

;universal quit
F12::
{
  Process, close, dolphin.exe
  WinRestore, XBMC
  ExitApp
}