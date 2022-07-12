#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 471, 157, 192, 124)
$Label1 = GUICtrlCreateLabel("storage", 24, 16, 36, 17)
$Label2 = GUICtrlCreateLabel("poney", 24, 48, 36, 17)
$Label3 = GUICtrlCreateLabel("invent", 24, 80, 36, 17)
$Label4 = GUICtrlCreateLabel("Stop", 24, 112, 36, 17)
$Input1 = GUICtrlCreateInput("a", 80, 16, 121, 21)
$Input2 = GUICtrlCreateInput("z", 80, 48, 121, 21)
$Input3 = GUICtrlCreateInput("e", 80, 80, 121, 21)
$Input4 = GUICtrlCreateInput("r", 80, 112, 121, 21)
$Input5 = GUICtrlCreateInput("0", 312, 16, 121, 21)
$Label5 = GUICtrlCreateLabel("nb item", 256, 16, 36, 17)
$Button1 = GUICtrlCreateButton("Go", 312, 72, 75, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Opt("SendKeyDownDelay", 50)

Global $pos
Global $pos2
Global $pos3

Call("GUI")

Func GUI()
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
	  Case $GUI_EVENT_CLOSE
		 Exit

	  Case $Button1
		 HotKeySet(GUICtrlRead($Input1),"storage")
		 HotKeySet(GUICtrlRead($Input2),"poney")
		 HotKeySet(GUICtrlRead($Input3),"invent")
		 HotKeySet(GUICtrlRead($Input4),"GUI")

	EndSwitch
WEnd
EndFunc

Func storage()
   $pos = MouseGetPos()
   Call("gui")
EndFunc
Func poney()
   $pos2 = MouseGetPos()
   Call("gui")
EndFunc
Func invent()
   $pos3 = MouseGetPos()
   Call("stack")
EndFunc


Func stack()

   While 1
	  MouseMove($pos[0],$pos[1],7)
	  MouseDown($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  MouseMove($pos[0]+20,$pos[1]+60,7)
	  Sleep(100)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  Send(GUICtrlRead($Input5))
	  Sleep(100)
	  Send("{SPACE}")
	  Sleep(100)

	  MouseMove($pos2[0],$pos2[1],7)
	  MouseDown($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  MouseMove($pos2[0]+20,$pos2[1]+20,7)
	  Sleep(200)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  Send("f")
	  Sleep(100)
	  Send("{SPACE}")
	  Sleep(100)

	  MouseMove($pos3[0],$pos3[1],7)
	  MouseDown($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  MouseMove($pos3[0]+20,$pos3[1]+20,7)
	  Sleep(100)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  Send("f")
	  Sleep(100)
	  Send("{SPACE}")
	  Sleep(100)
   WEnd
EndFunc

