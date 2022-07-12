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
$Input1 = GUICtrlCreateInput("d", 216, 56, 121, 21)
$Label2 = GUICtrlCreateLabel("Recette", 56, 104, 42, 17)
$Input2 = GUICtrlCreateInput("Beer", 216, 104, 121, 21)
$Label3 = GUICtrlCreateLabel("Durabilité ustensil", 56, 152, 86, 17)
$Label4 = GUICtrlCreateLabel("Temps de cuisson (sec)", 56, 200, 87, 17)
$Input3 = GUICtrlCreateInput("102", 216, 152, 121, 21)
$Input4 = GUICtrlCreateInput("10", 216, 200, 121, 21)
$Label5 = GUICtrlCreateLabel("Raccourci d'utilisation", 56, 248, 107, 17)
$Input5 = GUICtrlCreateInput("r", 216, 248, 121, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Opt("SendKeyDownDelay", 360)

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
   $ti = 0
   $co = 8

   While 1
	  If $ti < $co Then
	  Send($rac)
	  MouseMove(-782,360,35)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(50)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  Send($recette)
	  Sleep(250)
	  Send("{ENTER}")
	  sleep(250)
	  MouseMove(-913,392,35)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(50)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  sleep(250)
	  MouseMove(-500,395,35)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(50)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  sleep(250)
	  MouseMove(-1200,518,35)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(250)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  sleep(250)
	  Send("{Space}")
	  sleep(250)
	  Send("F")
	  sleep(250)
	  Send("{Space}")
	  EndIf

	  $timer = 0
	  while $dura > $timer
		 Sleep($cui)
		 $timer = $timer + 1
		 $eng = $eng + ($cui/1000)
		 If $eng > 1200 Then
			Send("M")
			sleep(250)
			MouseWheel("down",200)
			sleep(250)
			MouseMove(-125,945,35)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseMove(-422,547,35)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseMove(-640,229,35)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseMove(-125,945,35)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(250)

			MouseMove(-220,392,35)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseMove(-1810,150,35)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(250)
			Send("F")
			sleep(250)
			Send("{Space}")
			sleep(250)
			Send("M")
			$eng = 0
		 EndIf

	  WEnd
	  sleep(5000)
	  If ($ti + 1) < $co Then
		 Send($dep)
		 sleep(250)
	  EndIf

	  $ti = $ti + 1
   WEnd

EndFunc


Func test()
Send("M")
			sleep(500)
			MouseWheel("down",200)
			sleep(500)
			MouseMove(-125,945,35)
			sleep(500)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(500)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(500)
			MouseMove(-422,547,35)
			sleep(500)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(500)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(500)
			MouseMove(-640,229,35)
			sleep(500)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(500)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(500)
			MouseMove(-125,945,35)
			sleep(500)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(500)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(500)

			MouseMove(-220,392,35)
			sleep(500)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(500)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(500)
			MouseMove(-1810,150,35)
			sleep(500)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(500)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(500)
			Send("F")
			sleep(500)
			Send("{Space}")
			sleep(500)
			Send("M")
EndFunc














