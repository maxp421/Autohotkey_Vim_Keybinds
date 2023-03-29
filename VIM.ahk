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
CoordMode, Mouse, Screen
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance force ; Limits one instance of the script to ever be running.
autorefresh = 0

Posture:
  Gui, -Caption +AlwaysOnTop +Owner +LastFound
  Gui, Color, fc8a42
  Gui, Font, s40 w700 q4, Comic Sans MS
  Gui, Font, cWhite
  Gui, Add, Text,, FUCKING POSTURE
  Gui, Show, x1310 y0
  Sleep 4000
  Gui, Hide

  #Persistent
  SetTimer, Posture, 600000
return

; F11::  
; Reload
; return

$Home::
  if (autorefresh = 0){
    autorefresh = 1
    MsgBox, autorefresh on
    return
  }
  if (autorefresh = 1){
    autorefresh = 0
    MsgBox, autorefresh off
    return
  }
return

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
  if (autorefresh = 1){
    ControlSend, ahk_parent, ^+r, ahk_class MozillaWindowClass
  }
return

$Numpad1::
  MouseMove, -640, 512
return

$Numpad2::
  MouseMove, 960, 540
return

$Numpad3::
  MouseMove, 2880, 540
return