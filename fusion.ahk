;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, Fusion.exe -fullscreen "%1%"

;universal quit
F12::
{
  Send, {AltDown}{F4}{AltUp}
  WinRestore, XBMC
  ExitApp
}