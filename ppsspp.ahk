;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, PPSSPPWindows64.exe "%1%"

F10::Send {F2} ;save state
F11::Send {F4} ;load state

;universal quit
F12::
{
  Process, close, PPSSPPWindows64.exe
  WinRestore, XBMC
  ExitApp
}