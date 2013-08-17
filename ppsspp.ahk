;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, PPSSPPWindows64.exe "%1%"

;universal quit
F12::
{
  Process, close, PPSSPPWindows64.exe
  WinRestore, XBMC
  ExitApp
}