#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
#include <Misc.au3>

HotKeySet("a","waiti")
HotKeySet("e","cli")
Call ("waiti")

func waiti()

   While 1
	  sleep(50)
   WEnd

EndFunc

func cli()

   while 1
		 Controlclick("Chrome_WidgetWin_1","FireStone-Firestone Idle RPG at R2Games.com",,,,856,369)
		 sleep(500)
	  WEnd

   EndFunc