;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, DeSmuME_x64.exe "%1%"

;fullscreen
WinWaitActive, ahk_class DeSmuME
  if ErrorLevel
  {
    MsgBox, Launch error.
    ExitApp
    return
  }
  else
  {
    Send {altdown}{enter}{altup}
  }

;hide mouse
MouseMove 9999,9999,0
BlockInput MouseMove

;Not working, need to test other send methods later
F10::Send +{F1} ;save state
F11::Send {F1} ;load state

;universal quit
F12::
{
  Send {Altdown}{F4}{Altup} ;cleaner shutdown
  BlockInput MouseMoveOff
  MouseMove -A_ScreenWidth/2,-A_ScreenHeight/2, 5, R
  WinRestore, XBMC
  ExitApp
}