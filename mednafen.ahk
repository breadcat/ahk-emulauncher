;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, mednafen.exe "%1%"

;universal quit
F12::
{
  Process, close, mednafen.exe
  WinRestore, XBMC
  ExitApp
}