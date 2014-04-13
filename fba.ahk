;environment
#SingleInstance,Force
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

;launching these is a little unusual due to the naming structure FBA uses.

;we'll use metal slug 2 as an example. the rom is named 'mslug2.zip', but XBMC won't read this.
;to get around this we create a batch file called 'Metal Slug 2.bat' and advanced launcher will run that.
;contained inside the batch file is a script that will save the rom name to an ini which this launcher reads.

RunWait, %1%, Hide
IniRead, rom, rom.ini, romheader, romfile
Run, fba.exe "%rom%"

;universal quit
F12::
{
  SendPlay {Esc} ;close emu
  WinWaitClose, "FB Alpha" 
  WinRestore, XBMC
  ExitApp
}