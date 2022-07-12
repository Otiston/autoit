#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Date.au3>
#include <MsgBoxConstants.au3>

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Solar Time Converter", 358, 141, 192, 124)
$Button1 = GUICtrlCreateButton("Give me the time", 24, 16, 217, 57)
$Input1 = GUICtrlCreateInput("HH/mm/M", 64, 96, 89, 21)
$Checkbox = GUICtrlCreateCheckbox("Manual Time", 176, 96, 97, 17)
$Summer = GUICtrlCreateRadio("Summer", 272, 16, 105, 25)
$Winter = GUICtrlCreateRadio("Winter", 272, 41, 65, 31)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
	  Case $Button1
		 Time()

	  Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
 WEnd



Func Time()

   Local $aMyDate, $rTime, $corr, $SWtime


if GUICtrlRead($Winter) = 1 Then
   $SWtime = 1
ElseIf GUICtrlRead($Summer) = 1 Then
   $SWtime = 2
EndIf



_DateTimeSplit(_DateTimeFormat(_NowCalc(), 0), $aMyDate, $rTime)

If GUICtrlRead($Checkbox) = $GUI_CHECKED then
$rTime = StringSplit(GUICtrlRead($Input1),"/")
$aMyDate[2] = $rTime[3]
EndIf



If $aMyDate[2] = 1 Then
   $corr = 9
ElseIf $aMyDate[2] = 2 Then
   $corr = 13
ElseIf $aMyDate[2] = 3 Then
   $corr = 8
ElseIf $aMyDate[2] = 4 Then
   $corr = 0
ElseIf $aMyDate[2] = 5 Then
   $corr = -3
ElseIf $aMyDate[2] = 6 Then
   $corr = 1
ElseIf $aMyDate[2] = 7 Then
   $corr = 5
ElseIf $aMyDate[2] = 8 Then
   $corr = 3
ElseIf $aMyDate[2] = 9 Then
   $corr = -5
ElseIf $aMyDate[2] = 10 Then
   $corr = -13
ElseIf $aMyDate[2] = 11 Then
   $corr = -13
ElseIf $aMyDate[2] = 12 Then
   $corr = -4
EndIf




If ($rTime[2]-12-$corr) < 0 Then
   $SWtime = $SWtime + 1
   $rTime[2] = 60 + ($rTime[2]-12-$corr)
Else
   $rTime[2] = $rTime[2]-12-$corr
EndIf

If ($rTime[1]-$SWtime) < 0 Then
   $rTime[1] = 24 + $rTime[1]-$SWtime
Else
   $rTime[1] = $rTime[1]-$SWtime
EndIf

If $rTime[2] = 0 Then
   $rTime[2] = "00"
EndIf
If $rTime[1] = 0 Then
   $rTime[1] = "00"
EndIf

MsgBox(0,Time,"          " & $rTime[1] & " H " & $rTime[2])



 EndFunc





