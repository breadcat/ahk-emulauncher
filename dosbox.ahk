;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir D:\games\dos\ ;can't use usual scriptdir variable, dosbox doesn't like it.

;launch
Run, "%1%"

;universal quit
F12::
{
  Process, close, dosbox.exe
  WinRestore, XBMC
  ExitApp
}