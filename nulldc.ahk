;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, nullDC_Win32_Release.exe -config ImageReader:defaultImage="%1%"

;hide mouse (improve later)
CoordMode, Mouse, Screen
MouseMove, A_ScreenWidth, A_ScreenHeight, 0

;universal quit
F12::
{
  Process, close, nullDC_Win32_Release.exe
  WinRestore, XBMC
  ExitApp
}