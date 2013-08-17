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

;hide mouse (improve later)
CoordMode, Mouse, Screen
MouseMove, A_ScreenWidth, A_ScreenHeight, 0

;universal quit
F12::
{
  Process, close, DeSmuME_x64.exe
  WinRestore, XBMC
  ExitApp
}