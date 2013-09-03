;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launch
Run, nullDC_Win32_Release.exe -config ImageReader:defaultImage="%1%"

;hide mouse
MouseMove 9999,9999,0
BlockInput MouseMove

;universal quit
F12::
{
  Process, close, nullDC_Win32_Release.exe
  BlockInput MouseMoveOff
  MouseMove -A_ScreenWidth/2,-A_ScreenHeight/2, 5, R
  WinRestore, XBMC
  ExitApp
}