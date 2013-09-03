;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, yabause.exe -f -i "%1%"

;hide mouse
MouseMove 9999,9999,0
BlockInput MouseMove

;save/load keys
F10::Send ^0 ;save state
F11::Send !0 ;load state

;universal quit
F12::
{
  Send ^q ;clean shutdown
  BlockInput MouseMoveOff
  MouseMove -A_ScreenWidth/2,-A_ScreenHeight/2, 5, R
  WinRestore, XBMC
  ExitApp
}