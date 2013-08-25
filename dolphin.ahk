;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, dolphin.exe /b /e "%1%"

F10::Send +{F1} ;save state
F11::Send {F1} ;load state

;universal quit
F12::
{
  Send {Escape} ;cleaner shutdown
  WinRestore, XBMC
  ExitApp
}