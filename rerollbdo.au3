#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
#Region ### START Koda GUI section ### Form=E:\programes\koda\Forms\rerollmaster.kxf
$Form1 = GUICreate("Form1", 447, 407, 192, 124)
$Group1 = GUICtrlCreateGroup("Tiston reroll energie master 4000", 48, 24, 345, 305)
$Radio1 = GUICtrlCreateRadio("Pas de lit", 80, 168, 89, 25)
$Radio2 = GUICtrlCreateRadio("lit 1 eng", 80, 208, 113, 25)
$Radio3 = GUICtrlCreateRadio("lit 2 eng", 256, 168, 145, 25)
$Radio4 = GUICtrlCreateRadio("lit 3 eng", 256, 208, 113, 25)
$Label4 = GUICtrlCreateLabel("Raccourci pour utiliser le lit", 72, 248, 146, 17)
$lit = GUICtrlCreateInput("", 304, 248, 49, 21)
$Label5 = GUICtrlCreateLabel("Temps de chargement (en seconde)", 72, 296, 175, 17)
$chargement = GUICtrlCreateInput("", 304, 296, 49, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Label1 = GUICtrlCreateLabel("Combien d'energie", 72, 40, 219, 17)
GUICtrlSetFont(-1, 5, 400, 0, "MS Sans Serif")
$eng = GUICtrlCreateInput("", 304, 40, 65, 21)
$Label2 = GUICtrlCreateLabel("Combien de reroll", 72, 88, 221, 17)
$reroll = GUICtrlCreateInput("", 304, 88, 65, 21)
$label3 = GUICtrlCreateLabel("kamalsyv (cocher si activé)", 72, 136, 228, 17)
$kama = GUICtrlCreateCheckbox("", 344, 136, 17, 17)
$go = GUICtrlCreateButton("go", 72, 336, 75, 25)
$stop = GUICtrlCreateButton("stop", 280, 336, 75, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
Global $load
Global $racc1
Global $posreroll[5][2] = [[719,543], [873,543], [1040,543], [1190,543], [1288,474]]
Opt("SendKeyDownDelay", 50)

While 1
   $nMsg = GUIGetMsg()
   Switch $nMsg
	  Case $GUI_EVENT_CLOSE
		 Exit

	  Case $stop
		 Exit

	  Case $go
		 $racc1 = GUICtrlRead($lit)
		 $load = GUICtrlRead($chargement)
		 $load = $load * 1000
		 sleep(5000)
;~ 		 test()
		 rerolling()

	EndSwitch
WEnd

Func Rerolling()
   $offreg = 0
   $timer = 0
   $timer2 = 0
   $timer3 = 0
   $energie = GUICtrlRead($eng,1)
   $rer = GUICtrlRead($reroll,1)
   $rerollcounter = 0
   if GUICtrlRead($kama) = $GUI_CHECKED Then
	  $regen = 3
   Else
	  $regen = 1
   EndIf
   If GUICtrlRead($Radio1) = 1 Then
	  $bed = 0
   EndIf
   If GUICtrlRead($Radio2) = 1 Then
	  $bed = 1
   EndIf
   If GUICtrlRead($Radio3) = 1 Then
	  $bed = 2
   EndIf
   If GUICtrlRead($Radio4) = 1 Then
	  $bed = 3
   EndIf


   While $rerollcounter < $rer
	  $energie = $energie - $offreg
	  Send("{ESC down}")
	  Sleep(50)
	  Send("{ESC up}")
	  Sleep(250)
	  MouseMove(880,815,35)
	  Sleep(250)
	  MouseDown($MOUSE_CLICK_PRIMARY)
	  Sleep(50)
	  MouseUp($MOUSE_CLICK_PRIMARY)
	  If $rerollcounter < 4 Then
		 MouseMove($posreroll[$rerollcounter][0],$posreroll[$rerollcounter][1],35)
		 Sleep(250)
		 MouseDown($MOUSE_CLICK_PRIMARY)
		 Sleep(50)
		 MouseUp($MOUSE_CLICK_PRIMARY)
		 Sleep(250)
		 MouseDown($MOUSE_CLICK_PRIMARY)
		 Sleep(50)
		 MouseUp($MOUSE_CLICK_PRIMARY)
		 Sleep(250)
		 Send("{Space down}")
		 Sleep(50)
		 Send("{Space up}")
	  Else
		 MouseMove($posreroll[4][0],$posreroll[4][1],35)
		 $count = $rerollcounter - 3
		 while $count > 0
			MouseDown($MOUSE_CLICK_PRIMARY)
			Sleep(50)
			MouseUp($MOUSE_CLICK_PRIMARY)
			$count = $count - 1
			Sleep(200)
		 WEnd
		 MouseMove($posreroll[3][0],$posreroll[3][1],35)
		 Sleep(250)
		 MouseDown($MOUSE_CLICK_PRIMARY
		 Sleep(50)
		 MouseUp($MOUSE_CLICK_PRIMARY)
		 Sleep(250)
		 MouseDown($MOUSE_CLICK_PRIMARY)
		 Sleep(50)
		 MouseUp($MOUSE_CLICK_PRIMARY)
		 Sleep(250)
		 Send("{Space down}")
		 Sleep(50)
		 Send("{Space up}")
	  EndIf

	  Sleep($load)
	  If $bed > 0 Then
	  Send($racc1)
	  EndIf

	  While $timer < $energie
		 Sleep(180000)
		 $timer = $timer + $regen + $bed
		 $timer2 = $timer2 + 1
		 $timer3 = $timer3 + 1
		 if $timer2 = 20 Then
			$offreg = $offreg + 1
			$timer2 = 0
		 EndIf
;~ 		 if $timer3 > 13 Then
;~ 			Send("M")
;~ 			sleep(250)
;~ 			MouseMove(1796,1054,35)
;~ 			sleep(250)
;~ 			MouseDown($MOUSE_CLICK_PRIMARY)
;~ 			sleep(250)
;~ 			MouseUp($MOUSE_CLICK_PRIMARY)
;~ 			sleep(250)
;~ 			MouseMove(1493,655,35)
;~ 			sleep(250)
;~ 			MouseDown($MOUSE_CLICK_PRIMARY)
;~ 			sleep(250)
;~ 			MouseUp($MOUSE_CLICK_PRIMARY)
;~ 			sleep(250)
;~ 			MouseMove(1272,338,35)
;~ 			sleep(250)
;~ 			MouseDown($MOUSE_CLICK_PRIMARY)
;~ 			sleep(250)
;~ 			MouseUp($MOUSE_CLICK_PRIMARY)
;~ 			sleep(250)
;~ 			Send("M")
;~ 			$timer3 = 0
;~ 		 EndIf
	  WEnd
	  $timer = 0
	  $rerollcounter = $rerollcounter + 1
   WEnd


   EndFunc
Func test()
	  Send($racc1)
   EndFunc







