#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>


$GUI = GUICreate("Fury potz", 407, 303, 256, 128)
$Group1 = GUICtrlCreateGroup("Popo en fury", 8, 0, 393, 297)
$go = GUICtrlCreateButton("Demarrer", 56, 264, 89, 25)
$Label1 = GUICtrlCreateLabel("Premier raccourci popo", 16, 56, 113, 17)
$Label2 = GUICtrlCreateLabel("Deuxieme raccourci popo", 16, 96, 125, 17)
$Label3 = GUICtrlCreateLabel("Troisieme raccourci popo", 16, 136, 123, 17)
$popo1 = GUICtrlCreateInput("", 160, 56, 57, 21)
$popo2 = GUICtrlCreateInput("", 160, 96, 57, 21)
$popo3 = GUICtrlCreateInput("", 160, 136, 57, 21)
$Label4 = GUICtrlCreateLabel("Cocher pour activer", 296, 24, 97, 17)
$popo1a = GUICtrlCreateCheckbox("", 336, 56, 41, 17)
$popo2a = GUICtrlCreateCheckbox("", 336, 96, 41, 17)
$popo3a = GUICtrlCreateCheckbox("", 336, 136, 41, 17)
$Label5 = GUICtrlCreateLabel("Raccourci pour engendrer la fury des popos", 16, 184, 206, 17)
$fury = GUICtrlCreateInput("", 264, 184, 49, 21)
$Label6 = GUICtrlCreateLabel("Raccourci pour mettre en pause la fury des popos", 16, 224, 234, 17)
$ESC = GUICtrlCreateInput("", 264, 216, 49, 21)
$sec = GUICtrlCreateLabel("Seconde", 232, 24, 47, 17)
$spopo1 = GUICtrlCreateInput("", 232, 56, 49, 21)
$spopo2 = GUICtrlCreateInput("", 232, 96, 49, 21)
$spopo3 = GUICtrlCreateInput("", 232, 136, 49, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Quitter = GUICtrlCreateButton("Quitter", 208, 264, 89, 25)
GUISetState(@SW_SHOW)
Global $d[8] = [":sueur:",":kermit:",":truhox:",":petro:",":sueur:",":oulah:",":fou:",":bave:"]
Call("GUI")

Func GUI()

While 1

	$nMsg = GUIGetMsg()
	Switch $nMsg
	  Case $GUI_EVENT_CLOSE
		 Exit
	  Case $Quitter
		 Exit

	  Case $go
		 HotKeySet(GUICtrlRead($fury),"fury")
		 HotKeySet(GUICtrlRead($ESC),"GUI")
		 If GUICtrlRead($popo1a) = 1 Then
			Global $rpopo1=GUICtrlRead($popo1)
		 Else
			Global $rpopo1=""
		 EndIf
		 If GUICtrlRead($popo2a) = 1 Then
			Global $rpopo2=GUICtrlRead($popo2)
		 Else
			Global $rpopo2=""
		 EndIf
		 If GUICtrlRead($popo3a) = 1 Then
			Global $rpopo3=GUICtrlRead($popo3)
		 Else
			Global $rpopo3=""
		 EndIf

   EndSwitch

WEnd

EndFunc


Func fury()

   while 1
   $c = Random(0,7,1)

;~ Send(":sueur:")
;~ send(":kermit:")
;~ send(":truhox:")
;~ send(":petro:")
;~  send(":sueur:")
;~  send(":oulah: ")
;~  send(":fou:")
;~ send(":bave:")
send($d[$c])
Sleep(100)
Send("{ENTER}")
Sleep(61000)

WEnd
EndFunc





















