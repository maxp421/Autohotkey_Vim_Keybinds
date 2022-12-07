;OPTIMIZATIONS START
#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
;OPTIMIZATIONS END
;YOUR SCRIPT GOES HERE, but first some recommendations
;the Unicode x64bit version is the fastest AHK installation
;use PixelSearch without Fast if you're searching for a single pixel of a single shade
; #Warn  ; Enable warnings to assist with detecting common errors.
CoordMode, Mouse, Window
CoordMode, Pixel, Window
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force   ; Limits one instance of the script to ever be running.

$CapsLock::
Send, {ESC}
return

$!CapsLock::
return

$^CapsLock::
return

$+CapsLock::
return

$!H::
Send, {Left}
return

$!J::
Send, {Down}
return

$!K::
Send, {Up}
return

$!L::
Send, {Right}
return

$<^s::
Send, ^s
ControlSend, ahk_parent, ^+r, ahk_class MozillaWindowClass
return