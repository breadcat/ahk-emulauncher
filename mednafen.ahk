;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, mednafen.exe "%1%"

F10::Send {F5} ;save state
F11::Send {F7} ;load state

;universal quit
F12::
{
  Send {Escape} ;cleaner shutdown
  WinRestore, XBMC
  ExitApp
}