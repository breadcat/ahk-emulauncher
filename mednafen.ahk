;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, mednafen.exe -fs 1 "%1%"

;save/load state handled via config file
;command.save_state keyboard 291 ;f10
;command.load_state keyboard 292 ;f11

;universal quit
F12::
{
  Process, Close, mednafen.exe ;messy shutdown, sometimes hangs when sent quit keys.
  WinRestore, XBMC
  ExitApp
}