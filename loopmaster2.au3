#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=E:\programes\koda\Forms\loop.kxf
$Form1 = GUICreate("Form1", 417, 162, 192, 124)
$Input1 = GUICtrlCreateInput("x", 48, 32, 97, 21)
$Input2 = GUICtrlCreateInput("c", 48, 64, 97, 21)
$Input3 = GUICtrlCreateInput("v", 48, 112, 97, 21)
$Input4 = GUICtrlCreateInput("3", 264, 32, 121, 21)
$Button1 = GUICtrlCreateButton("Button1", 272, 88, 89, 41)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
Opt("SendKeyDownDelay", 100)
Call("GUI")

Func GUI()
   While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		 Case $Button1
			HotKeySet(GUICtrlRead($Input1),"gauche")
			HotKeySet(GUICtrlRead($Input2),"droite")
			HotKeySet(GUICtrlRead($Input3),"GUI")
			HotKeySet("b","avance")

	EndSwitch
   WEnd
EndFunc

Func gauche()

$pos = MouseGetPos()
while 1
   MouseMove($pos[0]-$Input4,$pos[1], 1)
   $pos = MouseGetPos()
WEnd

EndFunc

Func droite()

   $pos2 = MouseGetPos()
while 1
   MouseMove($pos2[0]+$Input4,$pos2[1], 1)
   $pos2 = MouseGetPos()
WEnd


EndFunc

Func avance()
   While 1
	  Send("s")
	  Send("t")
	  Send("s")
	  Send("t")
	  Send("r")
	  Send("{z down}")
	  Send("{Space down}")
	  Sleep(500)
	  Send("{z up}")
	  Send("{Space up}")
   WEnd
EndFunc


