#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=E:\programes\koda\Forms\renamemachine.kxf
$Form1_1 = GUICreate("Renamemachine", 397, 291, 192, 124)
$animations = GUICtrlCreateButton("animations", 24, 16, 121, 33)
$characters = GUICtrlCreateButton("characters", 24, 64, 121, 33)
$events = GUICtrlCreateButton("events", 24, 112, 121, 33)
$items = GUICtrlCreateButton("items", 24, 160, 121, 33)
$paperdolls = GUICtrlCreateButton("paperdolls", 24, 208, 121, 33)
$projectiles = GUICtrlCreateButton("projectiles", 168, 16, 121, 33)
$resources = GUICtrlCreateButton("resources", 168, 64, 121, 33)
$spellicons = GUICtrlCreateButton("spellicons", 168, 112, 121, 33)
$tilesets = GUICtrlCreateButton("tilesets", 168, 160, 121, 33)
$Input1 = GUICtrlCreateInput("", 96, 256, 121, 21)
$panoramas = GUICtrlCreateButton("panoramas", 168, 208, 121, 33)
$switch = GUICtrlCreateButton("switch", 304, 160, 73, 33)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###



While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
	  Case $GUI_EVENT_CLOSE
		 Exit

	  Case $animations
		 $dir = "animations"
		 $t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 $tar = GUICtrlRead($Input1)
		 $num = 1
		 while $t > 0
			FileMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\t (" & $num & ").png","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\" & $tar & ".png")
			$num = $num + 1
			$tar = $tar + 1
			$t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 WEnd

	  Case $characters
		 $dir = "characters"
		 $t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 $tar = GUICtrlRead($Input1)
		 $num = 1
		 while $t > 0
			FileMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\t (" & $num & ").png","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\" & $tar & ".png")
			$num = $num + 1
			$tar = $tar + 1
			$t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 WEnd

	  Case $events
		 $dir = "events"
		 $t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 $tar = GUICtrlRead($Input1)
		 $num = 1
		 while $t > 0
			FileMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\t (" & $num & ").png","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\" & $tar & ".png")
			$num = $num + 1
			$tar = $tar + 1
			$t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 WEnd

	  Case $items
		 $dir = "items"
		 $t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 $tar = GUICtrlRead($Input1)
		 $num = 1
		 while $t > 0
			FileMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\t (" & $num & ").png","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\" & $tar & ".png")
			$num = $num + 1
			$tar = $tar + 1
			$t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 WEnd

	  Case $paperdolls
		 $dir = "paperdolls "
		 $t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 $tar = GUICtrlRead($Input1)
		 $num = 1
		 while $t > 0
			FileMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\t (" & $num & ").png","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\" & $tar & ".png")
			$num = $num + 1
			$tar = $tar + 1
			$t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 WEnd

	  Case $projectiles
		 $dir = "projectiles"
		 $t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 $tar = GUICtrlRead($Input1)
		 $num = 1
		 while $t > 0
			FileMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\t (" & $num & ").png","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\" & $tar & ".png")
			$num = $num + 1
			$tar = $tar + 1
			$t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 WEnd

	  Case $resources
		 $dir = "resources"
		 $t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 $tar = GUICtrlRead($Input1)
		 $num = 1
		 while $t > 0
			FileMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\t (" & $num & ").png","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\" & $tar & ".png")
			$num = $num + 1
			$tar = $tar + 1
			$t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 WEnd

	  Case $spellicons
		 $dir = "spellicons"
		 $t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 $tar = GUICtrlRead($Input1)
		 $num = 1
		 while $t > 0
			FileMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\t (" & $num & ").png","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\" & $tar & ".png")
			$num = $num + 1
			$tar = $tar + 1
			$t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 WEnd

	  Case $tilesets
		 $dir = "tilesets"
		 $t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 $tar = GUICtrlRead($Input1)
		 $num = 1
		 while $t > 0
			FileMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\t (" & $num & ").png","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\" & $tar & ".png")
			$num = $num + 1
			$tar = $tar + 1
			$t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 WEnd

	  Case $panoramas
		 $dir = "panoramas"
		 $t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 $tar = GUICtrlRead($Input1)
		 $num = 1
		 while $t > 0
			FileMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\t (" & $num & ").png","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\" & $tar & ".png")
			$num = $num + 1
			$tar = $tar + 1
			$t = FileFindFirstFile("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\" & $dir & "\*t*.png")
		 WEnd

	  Case $switch
		 if FileExists("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\tilesets1") = 1 Then
			DirMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\tilesets","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\tilesets2")
			DirMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\tilesets1","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\tilesets")
		 Else
			DirMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\tilesets","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\tilesets1")
			DirMove("E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\tilesets2","E:\Projectmmo\SuperBox\CLIENT\Data\data files\graphics\tilesets")
		 EndIf
	EndSwitch
WEnd
