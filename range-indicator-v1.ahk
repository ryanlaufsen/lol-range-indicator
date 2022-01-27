#IfWinActive, ahk_exe League of Legends.exe

$c::
 {
   toggle:=!toggle
   if (toggle)
    {
	  SendInput, {c down}
    }
   else
    {
	  SendInput, {c up}
    }
 }
return

#IfWinActive