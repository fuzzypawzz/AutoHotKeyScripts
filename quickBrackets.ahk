#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
If not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"
   ExitApp
}
; Write brackets on the f12 key
F12::
Send, {Raw}{} 
; makes cursor step inside brackets etc.
:?*B0:()::
:?*B0:[]::
:?*B0:{}::
sendInput {left}
return