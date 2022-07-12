#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 191, 88, 192, 124)
$Input1 = GUICtrlCreateInput("e", 16, 16, 57, 21)
$Input2 = GUICtrlCreateInput("a", 16, 48, 57, 21)
$Button1 = GUICtrlCreateButton("Button1", 96, 32, 73, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Opt("SendKeyDownDelay", 50)
Call("GUI")

Func GUI()
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
	  Case $GUI_EVENT_CLOSE
		 Exit

	  Case $Button1
		 HotKeySet(GUICtrlRead($Input1),"GUI")
		 HotKeySet(GUICtrlRead($Input2),"stack")

	EndSwitch
WEnd
EndFunc

Func stack()

   $pos = MouseGetPos()
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
	  Send("54")
	  Sleep(100)
	  Send("{SPACE}")
	  Sleep(100)

	  MouseMove(-1584,513,7)
	  MouseDown($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  MouseMove(-1564,533,7)
	  Sleep(200)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  Send("f")
	  Sleep(100)
	  Send("{SPACE}")
	  Sleep(100)

	  MouseMove(-298,246,7)
	  MouseDown($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  MouseMove(-278,266,7)
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

