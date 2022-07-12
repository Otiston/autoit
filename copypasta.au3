#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=e:\programes\koda\forms\copypastamachine.kxf
$Form1_1 = GUICreate("Form1", 513, 231, 192, 124)
$Label1 = GUICtrlCreateLabel("Copy pasta machine", 164, 16, 183, 29)
GUICtrlSetFont(-1, 16, 400, 0, "MS Sans Serif")
$Button1 = GUICtrlCreateButton("Button1", 208, 176, 97, 25)
$Input1 = GUICtrlCreateInput("Input1", 64, 56, 393, 50)
$Input2 = GUICtrlCreateInput("Input2", 224, 128, 65, 21)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Global $active = 0


While 1
	$nMsg = GUIGetMsg()

	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	  Case $Button1
		 if ($active = 0) Then
			$active = 1
			HotKeySet("a","Copypasta")
		 Else
			$active = 0
			HotKeySet("a")
		 EndIf

	EndSwitch

WEnd

Func Copypasta()
   $turn = GUICtrlRead($Input2,1)
   $read = GUICtrlRead($Input1,1)
   $set = 0
   while $set < $turn
	  ClipPut($read)
	  Send("{UP}")
	  send("{ENTER}")
	  $set = $set + 1
	  sleep(25)
   WEnd
EndFunc
