HotKeySet("a", "_ab")

call ("go")

func go()
While 1
    Sleep(10)
WEnd
EndFunc

Func _ab()
    Send("�")
    Sleep(500)
	Send("{NUMPAD5}")
    Sleep(500)
	Send("'")
    Sleep(500)
	Send("(")
    Sleep(500)
	Send("-")
    Sleep(500)
	Send("-")
    Sleep(500)
	Send("�")
    Sleep(500)
	Send("_")
    Sleep(500)
	Send("�")
    Sleep(500)
	Send("�")
    Sleep(500)
	call ("go")
EndFunc

Func On_Exit()
  exit
EndFunc