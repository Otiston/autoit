HotKeySet("a", "_ab")

call ("go")

func go()
While 1
    Sleep(10)
WEnd
EndFunc

Func _ab()
    Send("é")
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
	Send("è")
    Sleep(500)
	Send("_")
    Sleep(500)
	Send("ç")
    Sleep(500)
	Send("à")
    Sleep(500)
	call ("go")
EndFunc

Func On_Exit()
  exit
EndFunc