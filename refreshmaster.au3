#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>

Opt("SendKeyDownDelay", 50)

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 457, 182, 192, 124)
$Group1 = GUICtrlCreateGroup("Tiston worker refresh master 4000", 24, 16, 409, 145)
$Input1 = GUICtrlCreateInput("", 256, 64, 105, 21)
$Label1 = GUICtrlCreateLabel("Intervalle de refresh en minute", 72, 64, 146, 17)
$Button1 = GUICtrlCreateButton("GO", 184, 120, 81, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
Global $tim = 2

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		 Case $Button1
			sleep(5000)
			refresh()


	EndSwitch
WEnd

Func refresh()
   $delai = GUICtrlRead($Input1)
   $delai = $delai * 60000
   While 1
		Send("M")
			Sleep(100)
			MouseWheel("down",300)


			Sleep(200)
			MouseMove(-125,945,15)
			Sleep(200)
			MouseDown($MOUSE_CLICK_PRIMARY)
			Sleep(200)
			MouseUp($MOUSE_CLICK_PRIMARY)
			Sleep(200)
			MouseMove(-422,547,15)
			Sleep(200)
			MouseDown($MOUSE_CLICK_PRIMARY)
			Sleep(200)
			MouseUp($MOUSE_CLICK_PRIMARY)
			Sleep(200)
			MouseMove(-640,229,15)
			Sleep(200)
			MouseDown($MOUSE_CLICK_PRIMARY)
			Sleep(200)
			MouseUp($MOUSE_CLICK_PRIMARY)
			Sleep(200)
			MouseMove(-125,945,15)
			Sleep(200)
			MouseDown($MOUSE_CLICK_PRIMARY)
			Sleep(200)
			MouseUp($MOUSE_CLICK_PRIMARY)
			Sleep(200)

;~ 			MouseMove(-498,126,7)
;~ 			Sleep(100)
;~ 			MouseDown($MOUSE_CLICK_PRIMARY)
;~ 			Sleep(100)
;~ 			MouseUp($MOUSE_CLICK_PRIMARY)
;~ 			Sleep(100)
;~ 			MouseMove(-1022,482,7)
;~ 			Sleep(100)
;~ 			MouseDown($MOUSE_CLICK_PRIMARY)
;~ 			Sleep(100)
;~ 			MouseUp($MOUSE_CLICK_PRIMARY)
;~ 			Sleep(100)
;~ 			MouseMove(-1818,263,7)
;~ 			Sleep(100)
;~ 			MouseDown($MOUSE_CLICK_PRIMARY)
;~ 			Sleep(100)
;~ 			MouseUp($MOUSE_CLICK_PRIMARY)
;~ 			Sleep(100)
;~ 			Send("F")
;~ 			Sleep(100)
;~ 			Send("{Space}")
			Sleep(200)
			Send("M")
			Sleep(200)


;~ 			Send("{2 down}")
;~ 			sleep(250)
;~ 			Send("{2 up}")
;~ 			Send("é")

	  sleep($delai)
   WEnd

EndFunc
