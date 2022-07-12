#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
#include <Misc.au3>

#Region ### START Koda GUI section ### Form=E:\programes\koda\Forms\processmasterV2.kxf
$Form1_1 = GUICreate("Form1", 858, 831, 184, 128)
$Group3 = GUICtrlCreateGroup("Group3", 528, 24, 161, 105)
$Input5 = GUICtrlCreateInput("t", 592, 80, 33, 21)
$Label5 = GUICtrlCreateLabel("racc stop", 592, 56, 48, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Button1 = GUICtrlCreateButton("GO", 136, 48, 107, 41)
$Group2 = GUICtrlCreateGroup("Group2", 8, 144, 345, 65)
$Input6 = GUICtrlCreateInput("0", 24, 176, 121, 21)
$Radio1 = GUICtrlCreateRadio("1 item", 176, 176, 81, 17)
$Radio2 = GUICtrlCreateRadio("2 items", 288, 176, 57, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group4 = GUICtrlCreateGroup("Group2", 8, 216, 345, 65)
$Input7 = GUICtrlCreateInput("0", 24, 248, 121, 21)
$Radio3 = GUICtrlCreateRadio("1 item", 176, 248, 81, 17)
$Radio4 = GUICtrlCreateRadio("2 items", 288, 248, 57, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group5 = GUICtrlCreateGroup("Group2", 8, 288, 345, 65)
$Input8 = GUICtrlCreateInput("0", 24, 320, 121, 21)
$Radio5 = GUICtrlCreateRadio("1 item", 176, 320, 65, 17)
$Radio6 = GUICtrlCreateRadio("2 items", 288, 320, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group6 = GUICtrlCreateGroup("Group2", 8, 360, 345, 65)
$Input9 = GUICtrlCreateInput("0", 24, 392, 121, 21)
$Radio7 = GUICtrlCreateRadio("1 item", 176, 392, 105, 17)
$Radio8 = GUICtrlCreateRadio("2 items", 288, 392, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group7 = GUICtrlCreateGroup("Group2", 8, 432, 345, 65)
$Input10 = GUICtrlCreateInput("0", 24, 464, 121, 21)
$Radio9 = GUICtrlCreateRadio("1 item", 176, 464, 97, 17)
$Radio10 = GUICtrlCreateRadio("2 items", 288, 464, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group8 = GUICtrlCreateGroup("Group8", 376, 144, 457, 65)
$Radio11 = GUICtrlCreateRadio("fondre", 392, 176, 65, 17)
$Radio12 = GUICtrlCreateRadio("couper", 464, 176, 65, 17)
$Radio13 = GUICtrlCreateRadio("meuler", 536, 176, 65, 17)
$Radio14 = GUICtrlCreateRadio("secher", 608, 176, 65, 17)
$Radio15 = GUICtrlCreateRadio("filtrer", 680, 176, 49, 17)
$Radio16 = GUICtrlCreateRadio("secher", 744, 176, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group9 = GUICtrlCreateGroup("Group8", 376, 216, 457, 65)
$Radio17 = GUICtrlCreateRadio("fondre", 392, 248, 65, 17)
$Radio18 = GUICtrlCreateRadio("couper", 464, 248, 65, 17)
$Radio19 = GUICtrlCreateRadio("meuler", 536, 248, 65, 17)
$Radio20 = GUICtrlCreateRadio("secher", 608, 248, 65, 17)
$Radio21 = GUICtrlCreateRadio("filtrer", 680, 248, 57, 17)
$Radio22 = GUICtrlCreateRadio("secher", 744, 248, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group11 = GUICtrlCreateGroup("Group8", 376, 288, 457, 65)
$Radio29 = GUICtrlCreateRadio("fondre", 392, 320, 65, 17)
$Radio30 = GUICtrlCreateRadio("couper", 464, 320, 65, 17)
$Radio31 = GUICtrlCreateRadio("meuler", 536, 320, 65, 17)
$Radio32 = GUICtrlCreateRadio("secher", 608, 320, 65, 17)
$Radio33 = GUICtrlCreateRadio("filtrer", 680, 320, 57, 17)
$Radio34 = GUICtrlCreateRadio("secher", 744, 320, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group13 = GUICtrlCreateGroup("Group8", 376, 360, 457, 65)
$Radio41 = GUICtrlCreateRadio("fondre", 392, 392, 65, 17)
$Radio42 = GUICtrlCreateRadio("couper", 464, 392, 65, 17)
$Radio43 = GUICtrlCreateRadio("meuler", 536, 392, 65, 17)
$Radio44 = GUICtrlCreateRadio("secher", 608, 392, 65, 17)
$Radio45 = GUICtrlCreateRadio("filtrer", 680, 392, 57, 17)
$Radio46 = GUICtrlCreateRadio("secher", 744, 392, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group15 = GUICtrlCreateGroup("Group8", 376, 432, 457, 65)
$Radio53 = GUICtrlCreateRadio("fondre", 392, 464, 65, 17)
$Radio54 = GUICtrlCreateRadio("couper", 464, 464, 65, 17)
$Radio55 = GUICtrlCreateRadio("meuler", 536, 464, 65, 17)
$Radio56 = GUICtrlCreateRadio("secher", 608, 464, 65, 17)
$Radio57 = GUICtrlCreateRadio("filtrer", 680, 464, 49, 17)
$Radio58 = GUICtrlCreateRadio("secher", 744, 464, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group1 = GUICtrlCreateGroup("Group2", 8, 504, 345, 65)
$Input1 = GUICtrlCreateInput("0", 24, 536, 121, 21)
$Radio23 = GUICtrlCreateRadio("1 item", 176, 536, 97, 17)
$Radio24 = GUICtrlCreateRadio("2 items", 288, 536, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group10 = GUICtrlCreateGroup("Group2", 8, 576, 345, 65)
$Input11 = GUICtrlCreateInput("0", 24, 608, 121, 21)
$Radio25 = GUICtrlCreateRadio("1 item", 176, 608, 97, 17)
$Radio26 = GUICtrlCreateRadio("2 items", 288, 608, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group12 = GUICtrlCreateGroup("Group2", 8, 648, 345, 65)
$Input12 = GUICtrlCreateInput("0", 24, 680, 121, 21)
$Radio27 = GUICtrlCreateRadio("1 item", 176, 680, 97, 17)
$Radio28 = GUICtrlCreateRadio("2 items", 288, 680, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group14 = GUICtrlCreateGroup("Group2", 8, 728, 345, 65)
$Input13 = GUICtrlCreateInput("0", 24, 760, 121, 21)
$Radio35 = GUICtrlCreateRadio("1 item", 176, 760, 97, 17)
$Radio36 = GUICtrlCreateRadio("2 items", 288, 760, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group16 = GUICtrlCreateGroup("Group8", 376, 504, 457, 65)
$Radio37 = GUICtrlCreateRadio("fondre", 392, 536, 65, 17)
$Radio38 = GUICtrlCreateRadio("couper", 464, 536, 65, 17)
$Radio39 = GUICtrlCreateRadio("meuler", 536, 536, 65, 17)
$Radio40 = GUICtrlCreateRadio("secher", 608, 536, 65, 17)
$Radio47 = GUICtrlCreateRadio("filtrer", 680, 536, 49, 17)
$Radio48 = GUICtrlCreateRadio("secher", 744, 536, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group17 = GUICtrlCreateGroup("Group8", 376, 576, 457, 65)
$Radio49 = GUICtrlCreateRadio("fondre", 392, 608, 65, 17)
$Radio50 = GUICtrlCreateRadio("couper", 464, 608, 65, 17)
$Radio51 = GUICtrlCreateRadio("meuler", 536, 608, 65, 17)
$Radio52 = GUICtrlCreateRadio("secher", 608, 608, 65, 17)
$Radio59 = GUICtrlCreateRadio("filtrer", 680, 608, 49, 17)
$Radio60 = GUICtrlCreateRadio("secher", 744, 608, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group18 = GUICtrlCreateGroup("Group8", 376, 648, 457, 65)
$Radio61 = GUICtrlCreateRadio("fondre", 392, 680, 65, 17)
$Radio62 = GUICtrlCreateRadio("couper", 464, 680, 65, 17)
$Radio63 = GUICtrlCreateRadio("meuler", 536, 680, 65, 17)
$Radio64 = GUICtrlCreateRadio("secher", 608, 680, 65, 17)
$Radio65 = GUICtrlCreateRadio("filtrer", 680, 680, 49, 17)
$Radio66 = GUICtrlCreateRadio("secher", 744, 680, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group19 = GUICtrlCreateGroup("Group8", 368, 728, 457, 65)
$Radio67 = GUICtrlCreateRadio("fondre", 384, 760, 65, 17)
$Radio68 = GUICtrlCreateRadio("couper", 456, 760, 65, 17)
$Radio69 = GUICtrlCreateRadio("meuler", 528, 760, 65, 17)
$Radio70 = GUICtrlCreateRadio("secher", 600, 760, 65, 17)
$Radio71 = GUICtrlCreateRadio("filtrer", 672, 760, 49, 17)
$Radio72 = GUICtrlCreateRadio("secher", 736, 760, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Opt("SendKeyDownDelay", 50)

Global $stack[5][2]
Global $rec1
Global $rec2
Global $pos
Global $inv
Global $stackcount = 0
Global $timer
Global $fondre
Global $Inpu
Global $rad

Call("GUI")

Func GUI()
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
	  Case $GUI_EVENT_CLOSE
		 Exit

	  Case $Button1
		 HotKeySet(GUICtrlRead($Input5),"GUI")
		 Call("record")

	EndSwitch
WEnd
EndFunc

Func record()

Dim $inpu[9] = [GUICtrlRead($Input6), GUICtrlRead($Input7), GUICtrlRead($Input8), GUICtrlRead($Input9), GUICtrlRead($Input10), GUICtrlRead($Input1), GUICtrlRead($Input11), GUICtrlRead($Input12), GUICtrlRead($Input13)]
Dim $rad[9] = [GUICtrlRead($Radio1), GUICtrlRead($Radio3), GUICtrlRead($Radio5), GUICtrlRead($Radio7), GUICtrlRead($Radio9), GUICtrlRead($Radio23), GUICtrlRead($Radio25), GUICtrlRead($Radio27), GUICtrlRead($Radio35)]
Dim $fondre[9] = [GUICtrlRead($Radio11), GUICtrlRead($Radio17), GUICtrlRead($Radio29), GUICtrlRead($Radio41), GUICtrlRead($Radio53), GUICtrlRead($Radio37), GUICtrlRead($Radio49), GUICtrlRead($Radio61), GUICtrlRead($Radio67)]
Dim $rec1[9][2]
Dim $rec2[9][2]

   for $i = 0 to 8 Step 1
	  if $inpu[$i] <> 0 Then
		 if $rad[$i] = 1 Then
			MsgBox(0,"","press a to record the stack n°" & $i+1)
			Do
			   sleep(50)
			Until _IsPressed("41")
			$pos = MouseGetPos()
		 	$rec1[$i][0] = $pos[0]
			$rec1[$i][1] = $pos[1]
		 Else
			MsgBox(0,"","press a to record the first stack n°" & $i+1)
			Do
			   sleep(50)
			Until _IsPressed("41")
			$pos = MouseGetPos()
			$rec1[$i][0] = $pos[0]
			$rec1[$i][1] = $pos[1]
			MsgBox(0,"","press a to record the second stack n°" & $i+1)
			Do
			   sleep(50)
			Until _IsPressed("41")
			$pos = MouseGetPos()
		 	$rec2[$i][0] = $pos[0]
			$rec2[$i][1] = $pos[1]
		 EndIf
		 $stackcount = $stackcount + 1
	  EndIf

   Next
   MsgBox(0,"","press a to record the inventory stack")
   Do
	  sleep(50)
   Until _IsPressed("41")
   $inv = MouseGetPos()

   Call("proces")
EndFunc


Func proces()

   for $i = 0 to $stackcount Step 1
	  $timer = $inpu[$i]*60000
	  while $timer > 0
		 Sleep(100)
		 Send("r")
		 sleep(100)
		 MouseMove(-1000,759,10)
		 sleep(100)
		 MouseDown($MOUSE_CLICK_PRIMARY)
		 Sleep(100)
		 MouseUp($MOUSE_CLICK_PRIMARY)
		 Sleep(100)
		 MouseMove($inv[0],$inv[1],10)
		 Sleep(100)
		 MouseDown($MOUSE_CLICK_SECONDARY)
		 Sleep(100)
		 MouseUp($MOUSE_CLICK_SECONDARY)
		 Sleep(100)
		 Send("f")
		 Sleep(100)
		 Send("{SPACE}")
		 Sleep(100)
		 MouseMove(-770,612,10)
		 sleep(100)
		 MouseDown($MOUSE_CLICK_PRIMARY)
		 Sleep(100)
		 MouseUp($MOUSE_CLICK_PRIMARY)
		 Sleep(100)

;~ 	  a modifier pour rajouter les autres process
		 if $fondre[$i] = 1 Then
			MouseMove(-950,525,10)
		 Else
			MouseMove(-1138,525,10)
		 EndIf


;~ 	  a modifier pour rajouter les autres process
		 Sleep(100)
		 MouseDown($MOUSE_CLICK_PRIMARY)
		 Sleep(100)
		 MouseUp($MOUSE_CLICK_PRIMARY)
		 Sleep(100)

		 MouseMove($rec1[$i][0],$rec1[$i][1],10)
		 Sleep(100)
		 MouseDown($MOUSE_CLICK_SECONDARY)
		 Sleep(100)
		 MouseUp($MOUSE_CLICK_SECONDARY)
		 Sleep(100)
		 if $rad[$i] <> 1 then
			MouseMove($rec2[$i][0],$rec2[$i][1],10)
			Sleep(100)
			MouseDown($MOUSE_CLICK_SECONDARY)
			Sleep(100)
			MouseUp($MOUSE_CLICK_SECONDARY)
			Sleep(100)
		 EndIf

;~ 		 MouseMove(-995,304,10)
		 MouseMove(-915,304,10)
		 sleep(100)
		 MouseDown($MOUSE_CLICK_PRIMARY)
		 Sleep(100)
		 MouseUp($MOUSE_CLICK_PRIMARY)

		 if $timer > 1800000 Then
			Sleep(1800000)
			$timer = $timer - 1800000
		 Else
			Sleep($timer)
			$timer = 0
		 EndIf

		Send("M")
			sleep(250)
			MouseWheel("down",500)
			sleep(250)
			MouseMove(-125,945,15)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseMove(-422,547,15)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseMove(-640,229,15)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseMove(-125,945,15)
			sleep(250)
			MouseDown($MOUSE_CLICK_PRIMARY)
			sleep(250)
			MouseUp($MOUSE_CLICK_PRIMARY)
			sleep(250)

;~ 			MouseMove(-275,116,15)
;~ 			sleep(250)
;~ 			MouseDown($MOUSE_CLICK_PRIMARY)
;~ 			sleep(250)
;~ 			MouseUp($MOUSE_CLICK_PRIMARY)
;~ 			sleep(250)
;~ 			MouseMove(-800,300,15)
;~ 			sleep(250)
;~ 			MouseDown($MOUSE_CLICK_PRIMARY)
;~ 			sleep(250)
;~ 			MouseUp($MOUSE_CLICK_PRIMARY)
;~ 			sleep(250)
;~ 			MouseMove(-1818,263,15)
;~ 			sleep(250)
;~ 			MouseDown($MOUSE_CLICK_PRIMARY)
;~ 			sleep(250)
;~ 			MouseUp($MOUSE_CLICK_PRIMARY)
;~ 			sleep(250)
;~ 			Send("F")
;~ 			sleep(250)
;~ 			Send("{Space}")
;~ 			sleep(250)

			Send("M")
		 Sleep(300)
		 Send("z")
		 Sleep(100)
		 Send("s")
	  WEnd

   Next


EndFunc



