;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, mednafen.exe "%1%"

;not working, need to try alternate send modes.
F10::Send {F5} ;save state
F11::Send {F7} ;load state

;universal quit
F12::
{
  Process, Close, mednafen.exe ;messy shutdown, sometimes hangs when sent quit keys.
  WinRestore, XBMC
  ExitApp
}