#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
#include <Misc.au3>

Opt("SendKeyDownDelay", 50)

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 352, 154, 192, 124)
$Input1 = GUICtrlCreateInput("a", 48, 24, 121, 21)
$Go = GUICtrlCreateButton("Go", 72, 96, 75, 25)
$Input2 = GUICtrlCreateInput("e", 48, 56, 121, 21)
$Input3 = GUICtrlCreateInput("200", 208, 48, 121, 21)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Call("GUI")

Func GUI()
   MouseUp($MOUSE_CLICK_SECONDARY)
   MouseUp($MOUSE_CLICK_PRIMARY)
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg

		 Case $GUI_EVENT_CLOSE
			Exit

		 Case $Go
			HotKeySet(GUICtrlRead($Input1),"milk")
			HotKeySet(GUICtrlRead($Input2),"GUI")


	EndSwitch
WEnd
EndFunc

Func milk()
   $t = GUICtrlRead($Input3)
   While 1
	  Sleep(150)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep($t)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  Sleep(150)
	  MouseDown($MOUSE_CLICK_SECONDARY)
	  Sleep($t)
	  MouseUp($MOUSE_CLICK_SECONDARY)
   WEnd

EndFunc
