Gui, New, , CRAZY RANGE INDICATOR HAXXX
Gui, Font, S14 CBlue Bold, Calibri
Gui, Add, Picture, x2 y-1 w480 h160 , challenjour.png
Gui, Add, Text, x2 y159 w240 h50 +Center, Enter your advanced stats keybind (default "c"):
Gui, Add, Text, x242 y159 w240 h50 +Center, Set hotkey to toggle range indicators on:
Gui, Add, Button, x2 y250 w30 h30 , OK
Gui, Add, Button, x32 y250 w30 h30 , OK
Gui, Add, Button, x62 y250 w30 h30 , OK
Gui, Add, Button, x92 y250 w30 h30 , OK
Gui, Add, Button, x122 y250 w30 h30 , OK
Gui, Add, Button, x152 y250 w30 h30 , OK
Gui, Add, Button, x182 y250 w30 h30 , OK
Gui, Add, Button, x212 y250 w30 h30 +Center, OK
Gui, Add, Button, x242 y250 w30 h30 , OK
Gui, Add, Button, x272 y250 w30 h30 , OK
Gui, Add, Button, x302 y250 w30 h30 , OK
Gui, Add, Button, x332 y250 w30 h30 , OK
Gui, Add, Button, x362 y250 w30 h30 , OK
Gui, Add, Button, x362 y250 w30 h30 , OK
Gui, Add, Button, x392 y250 w30 h30 , OK
Gui, Add, Button, x422 y250 w30 h30 , OK
Gui, Add, Button, x452 y250 w30 h30 , OK
Gui, Add, Hotkey, x102 y209 w40 h40 +Center vStatsKey, C
Gui, Add, Hotkey, x332 y209 w40 h40 +Center vToggleKey, C
Gui, Show, x259 y200 h285 w486
Return

ButtonOK:
Gui, Submit, NoHide

Hotkey, IfWinActive, ahk_exe League of Legends.exe
Hotkey, %ToggleKey%, toggleIndicator

toggle := False

toggleIndicator()
{
    global StatsKey
    global toggle
    toggle:=!toggle
    if (toggle)
    {
        SendInput, {%StatsKey% down}
    }
    else
    {
        SendInput, {%StatsKey% up}
    }
}
return