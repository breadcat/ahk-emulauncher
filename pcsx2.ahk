;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, pcsx2.exe "%1%"

;hide log window
WinWait, PCSX2 Program Log
  WinHide

;universal quit
F12::
{
  process, close, pcsx2.exe
  WinRestore, XBMC
  ExitApp
}