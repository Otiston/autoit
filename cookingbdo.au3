#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form2 = GUICreate("Form2", 385, 388, 295, 225)
$Group1 = GUICtrlCreateGroup("Tiston Cook Master 4000", 32, 32, 321, 329)
$Button1 = GUICtrlCreateButton("Go", 72, 304, 75, 25)
$Button2 = GUICtrlCreateButton("Stop", 224, 304, 75, 25)
$Label1 = GUICtrlCreateLabel("Raccourci deplacement", 56, 56, 117, 17)
$Input1 = GUICtrlCreateInput("", 216, 56, 121, 21)
$Label2 = GUICtrlCreateLabel("Recette", 56, 104, 42, 17)
$Input2 = GUICtrlCreateInput("", 216, 104, 121, 21)
$Label3 = GUICtrlCreateLabel("Durabilité ustensil", 56, 152, 86, 17)
$Label4 = GUICtrlCreateLabel("Temps de cuisson (sec)", 56, 200, 87, 17)
$Input3 = GUICtrlCreateInput("", 216, 152, 121, 21)
$Input4 = GUICtrlCreateInput("", 216, 200, 121, 21)
$Label5 = GUICtrlCreateLabel("Raccourci d'utilisation", 56, 248, 107, 17)
$Input5 = GUICtrlCreateInput("", 216, 248, 121, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Opt("SendKeyDownDelay", 350)

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		 Case $Button1
			Sleep(3000)
			cook()
;~ 			test()
		 Case $Button2
			Exit

	EndSwitch
WEnd

Func cook()
   $rac = GUICtrlRead($Input5)
   $dep = GUICtrlRead($Input1)
   $recette = GUICtrlRead($Input2)
   $dura = GUICtrlRead($Input3)
   $cui = GUICtrlRead($Input4)
   $cui = $cui * 1000
   $eng = 0

   While 1
	  Send($rac)
	  MouseMove(1136,468,35)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(50)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  Send($recette)
	  Sleep(250)
	  Send("{ENTER}")
	  sleep(250)
	  MouseMove(994,503,35)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(50)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  sleep(250)
	  MouseMove(1420,496,35)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(50)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  sleep(250)
	  MouseMove(711,628,35)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(50)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  sleep(250)
	  Send("{Space}")
	  sleep(250)
	  Send("F")
	  sleep(250)
	  Send("{Space}")

	  $timer = 0
	  while $dura > $timer
		 Sleep($cui)
		 $timer = $timer + 1
		 $eng = $eng + ($cui/1000)
		 If $eng > 10780 Then
			Send("M")
			sleep(250)
			MouseWheel("down",200)
			sleep(250)
			MouseMove(1700,495,35)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			Sleep(50)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseMove(104,256,35)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			Sleep(50)
			MouseUp($MOUSE_CLICK_PRIMARY)
			Sleep(250)
			Send("F")
			sleep(250)
			Send("{Space}")
			sleep(250)
			Send("M")
		 EndIf

	  WEnd
	  sleep(5000)
	  Send($dep)
	  sleep(250)
   WEnd

EndFunc


Func test()
			Send("M")
			sleep(250)
			MouseWheel("down",200)
			sleep(250)
			MouseMove(1700,495,35)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			Sleep(50)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseMove(104,256,35)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			Sleep(50)
			MouseUp($MOUSE_CLICK_PRIMARY)
			Sleep(250)
			Send("F")
			sleep(250)
			Send("{Space}")
			sleep(250)
			Send("M")
EndFunc














