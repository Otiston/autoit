#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 375, 338, 218, 124)
$Group1 = GUICtrlCreateGroup("Group1", 24, 16, 121, 105)
$fondre = GUICtrlCreateRadio("fondre", 40, 48, 113, 17)
$couper = GUICtrlCreateRadio("couper", 40, 80, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group2 = GUICtrlCreateGroup("Group2", 224, 16, 129, 105)
$Radio3 = GUICtrlCreateRadio("1 item", 240, 48, 113, 17)
$Radio4 = GUICtrlCreateRadio("2 item", 240, 80, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Label1 = GUICtrlCreateLabel("Full after (minutes)", 24, 152, 89, 17)
$Input1 = GUICtrlCreateInput("0", 32, 176, 65, 21)
$Group3 = GUICtrlCreateGroup("Group3", 136, 144, 217, 169)
$Label2 = GUICtrlCreateLabel("racc storage 1 ", 152, 184, 75, 17)
$Label3 = GUICtrlCreateLabel("racc storage 2", 264, 184, 72, 17)
$Input2 = GUICtrlCreateInput("a", 168, 208, 33, 21)
$Input3 = GUICtrlCreateInput("q", 272, 208, 33, 21)
$Label4 = GUICtrlCreateLabel("racc inventair", 152, 248, 68, 17)
$Input4 = GUICtrlCreateInput("e", 168, 272, 33, 21)
$Input5 = GUICtrlCreateInput("t", 272, 272, 33, 21)
$Label5 = GUICtrlCreateLabel("racc stop", 264, 248, 48, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Button1 = GUICtrlCreateButton("GO", 32, 272, 67, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Opt("SendKeyDownDelay", 50)

Global $pos
Global $pos2
Global $pos3
Global $timer

Call("GUI")

Func GUI()
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
	  Case $GUI_EVENT_CLOSE
		 Exit

	  Case $Button1
		 HotKeySet(GUICtrlRead($Input2),"storage")
		 HotKeySet(GUICtrlRead($Input3),"storage2")
		 HotKeySet(GUICtrlRead($Input4),"inventair")
		 HotKeySet(GUICtrlRead($Input5),"GUI")
		 $timer = GUICtrlRead($input1) * 60000

	EndSwitch
WEnd
EndFunc

Func storage()
   $pos = MouseGetPos()
   Call("gui")
EndFunc
Func storage2()
   $pos2 = MouseGetPos()
   Call("gui")
EndFunc
Func inventair()
   $pos3 = MouseGetPos()
   Call("process")
;~    Call("test")
EndFunc

Func process()
   While 1
	  sleep(100)
	  Send("r")
	  sleep(100)
	  MouseMove(-1043,759,7)
	  sleep(100)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  MouseMove($pos3[0],$pos3[1],7)
	  Sleep(100)
	  MouseDown($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  Send("f")
	  Sleep(100)
	  Send("{SPACE}")

	  MouseMove(-770,612,7)
	  sleep(100)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  Sleep(100)

	  if GUICtrlRead($fondre) = 1 Then
		 MouseMove(-950,525,7)
	  Else
		 MouseMove(-1138,525,7)
	  EndIf

	  Sleep(100)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  Sleep(100)

	  MouseMove($pos[0],$pos[1],7)
	  Sleep(100)
	  MouseDown($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_SECONDARY)
	  Sleep(100)
	  if guictrlread($radio4) = 1 then
		 MouseMove($pos2[0],$pos2[1],7)
		 Sleep(100)
		 MouseDown($MOUSE_CLICK_SECONDARY)
		 Sleep(100)
		 MouseUp($MOUSE_CLICK_SECONDARY)
		 Sleep(100)
	  EndIf

	  MouseMove(-995,304,7)
	  sleep(100)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(100)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  Sleep($timer)
	  Send("z")
	  Sleep(100)
	  Send("s")

   WEnd
EndFunc

Func test()

    MouseMove(-950.525,7)
   Call("gui")
   EndFunc