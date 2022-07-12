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
$Form1_1 = GUICreate("Form1", 858, 526, 230, 179)
$Group3 = GUICtrlCreateGroup("Group3", 400, 16, 401, 105)
$Label2 = GUICtrlCreateLabel("racc storage 1 ", 416, 56, 75, 17)
$Label3 = GUICtrlCreateLabel("racc storage 2", 528, 56, 72, 17)
$Input2 = GUICtrlCreateInput("a", 432, 80, 33, 21)
$Input3 = GUICtrlCreateInput("q", 536, 80, 33, 21)
$Label4 = GUICtrlCreateLabel("racc inventair", 712, 56, 68, 17)
$Input4 = GUICtrlCreateInput("e", 728, 80, 33, 21)
$Input5 = GUICtrlCreateInput("t", 640, 80, 33, 21)
$Label5 = GUICtrlCreateLabel("racc stop", 632, 56, 48, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Button1 = GUICtrlCreateButton("GO", 144, 48, 107, 41)
$Group2 = GUICtrlCreateGroup("Group2", 8, 144, 345, 65)
$Input6 = GUICtrlCreateInput("0", 24, 176, 121, 21)
$Radio1 = GUICtrlCreateRadio("1 item", 176, 176, 81, 17)
$Radio2 = GUICtrlCreateRadio("2 items", 280, 176, 113, 17)
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
$Radio9 = GUICtrlCreateRadio("1 item", 176, 456, 97, 17)
$Radio10 = GUICtrlCreateRadio("2 items", 288, 464, 113, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group8 = GUICtrlCreateGroup("Group8", 376, 144, 457, 65)
$Radio11 = GUICtrlCreateRadio("fondre", 392, 176, 65, 17)
$Radio12 = GUICtrlCreateRadio("couper", 464, 176, 65, 17)
$Radio13 = GUICtrlCreateRadio("meuler", 536, 176, 65, 17)
$Radio14 = GUICtrlCreateRadio("secher", 608, 176, 65, 17)
$Radio15 = GUICtrlCreateRadio("filtrer", 680, 176, 65, 17)
$Radio16 = GUICtrlCreateRadio("secher", 752, 176, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group9 = GUICtrlCreateGroup("Group8", 376, 216, 457, 65)
$Radio17 = GUICtrlCreateRadio("fondre", 392, 248, 65, 17)
$Radio18 = GUICtrlCreateRadio("couper", 464, 248, 65, 17)
$Radio19 = GUICtrlCreateRadio("meuler", 536, 248, 65, 17)
$Radio20 = GUICtrlCreateRadio("secher", 608, 248, 65, 17)
$Radio21 = GUICtrlCreateRadio("filtrer", 680, 248, 65, 17)
$Radio22 = GUICtrlCreateRadio("secher", 752, 248, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group11 = GUICtrlCreateGroup("Group8", 376, 288, 457, 65)
$Radio29 = GUICtrlCreateRadio("fondre", 392, 320, 65, 17)
$Radio30 = GUICtrlCreateRadio("couper", 464, 320, 65, 17)
$Radio31 = GUICtrlCreateRadio("meuler", 536, 320, 65, 17)
$Radio32 = GUICtrlCreateRadio("secher", 608, 320, 65, 17)
$Radio33 = GUICtrlCreateRadio("filtrer", 680, 320, 65, 17)
$Radio34 = GUICtrlCreateRadio("secher", 752, 320, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group13 = GUICtrlCreateGroup("Group8", 376, 360, 457, 65)
$Radio41 = GUICtrlCreateRadio("fondre", 392, 392, 65, 17)
$Radio42 = GUICtrlCreateRadio("couper", 464, 392, 65, 17)
$Radio43 = GUICtrlCreateRadio("meuler", 536, 392, 65, 17)
$Radio44 = GUICtrlCreateRadio("secher", 608, 392, 65, 17)
$Radio45 = GUICtrlCreateRadio("filtrer", 680, 392, 65, 17)
$Radio46 = GUICtrlCreateRadio("secher", 752, 392, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group15 = GUICtrlCreateGroup("Group8", 376, 432, 457, 65)
$Radio53 = GUICtrlCreateRadio("fondre", 392, 464, 65, 17)
$Radio54 = GUICtrlCreateRadio("couper", 464, 464, 65, 17)
$Radio55 = GUICtrlCreateRadio("meuler", 536, 464, 65, 17)
$Radio56 = GUICtrlCreateRadio("secher", 608, 464, 65, 17)
$Radio57 = GUICtrlCreateRadio("filtrer", 680, 464, 65, 17)
$Radio58 = GUICtrlCreateRadio("secher", 752, 464, 65, 17)
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

Dim $inpu[5] = [GUICtrlRead($Input6), GUICtrlRead($Input7), GUICtrlRead($Input8), GUICtrlRead($Input9), GUICtrlRead($Input10)]
Dim $rad[5] = [GUICtrlRead($Radio1), GUICtrlRead($Radio3), GUICtrlRead($Radio5), GUICtrlRead($Radio7), GUICtrlRead($Radio9)]
Dim $fondre[5] = [GUICtrlRead($Radio11), GUICtrlRead($Radio17), GUICtrlRead($Radio29), GUICtrlRead($Radio41), GUICtrlRead($Radio53)]
Dim $rec1[5][2]
Dim $rec2[5][2]

   for $i = 0 to 4 Step 1
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
		 sleep(100)
		 Send("r")
		 sleep(100)
		 MouseMove(-1043,759,7)
		 sleep(100)
		 MouseDown($MOUSE_CLICK_PRIMARY)
		 Sleep(100)
		 MouseUp($MOUSE_CLICK_PRIMARY)
		 Sleep(100)
		 MouseMove($inv[0],$inv[1],7)
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

;~ 	  a modifier pour rajouter les autres process
		 if $fondre[$i] = 1 Then
			MouseMove(-950,525,7)
		 Else
			MouseMove(-1138,525,7)
		 EndIf


;~ 	  a modifier pour rajouter les autres process
		 Sleep(100)
		 MouseDown($MOUSE_CLICK_PRIMARY)
		 Sleep(100)
		 MouseUp($MOUSE_CLICK_PRIMARY)
		 Sleep(100)

		 MouseMove($rec1[$i][0],$rec1[$i][1],7)
		 Sleep(100)
		 MouseDown($MOUSE_CLICK_SECONDARY)
		 Sleep(100)
		 MouseUp($MOUSE_CLICK_SECONDARY)
		 Sleep(100)
		 if $rad[$i] <> 1 then
			MouseMove($rec2[$i][0],$rec2[$i][1],7)
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

		 if $timer > 1800000 Then
			Sleep(1800000)
			$timer = $timer - 1800000
		 Else
			Sleep($timer)
			$timer = 0
		 EndIf

		 Send("M")
			Sleep(100)
			MouseMove(-125,945,7)
			Sleep(100)
			MouseDown($MOUSE_CLICK_PRIMARY)
			Sleep(100)
			MouseUp($MOUSE_CLICK_PRIMARY)
			Sleep(100)
			MouseMove(-422,547,7)
			Sleep(100)
			MouseDown($MOUSE_CLICK_PRIMARY)
			Sleep(100)
			MouseUp($MOUSE_CLICK_PRIMARY)
			Sleep(100)
			MouseMove(-640,229,7)
			Sleep(100)
			MouseDown($MOUSE_CLICK_PRIMARY)
			Sleep(100)
			MouseUp($MOUSE_CLICK_PRIMARY)
			Sleep(100)
		 Send("M")
		 Sleep(300)
		 Send("z")
		 Sleep(100)
		 Send("s")
	  WEnd

   Next


EndFunc



