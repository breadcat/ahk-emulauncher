;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, Project64.exe "%1%"

;fullscreen
WinWaitActive, ahk_class Project64 2.0
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

;universal quit
F12::
{
  Process, Close, Project64.exe
  WinRestore, XBMC
  ExitApp
}