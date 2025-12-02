#Requires AutoHotkey v2.0


; ============================================
; CONFIGURATION - Change your hotkey here!
; ============================================
LAUNCHER_HOTKEY := "!{Space}"   ; Alt+Space (default for Raycast)
; Examples:
;   "!{Space}"   = Alt+Space
;   "^{Space}"   = Ctrl+Space
;   "+{Space}"   = Shift+Space
;   "!a"         = Alt+A
;   "{F12}"      = F12


; Map Windows key alone → Launcher hotkey
; Win+key combinations are explicitly passed through


; Completely block Win key from reaching Windows (no Start menu ever)
$LWin::return
$RWin::return


$LWin Up:: {
    ; Only send hotkey if Win was pressed alone (no other key in between)
    if (A_PriorKey = "LWin")
        Send(LAUNCHER_HOTKEY)
}


$RWin Up:: {
    if (A_PriorKey = "RWin")
        Send(LAUNCHER_HOTKEY)
}


; ============================================
; Win+key shortcuts - explicitly pass through
; ============================================
#HotIf GetKeyState("LWin", "P") || GetKeyState("RWin", "P")


; Common shortcuts
r::Send("#r")           ; Run dialog
d::Send("#d")           ; Show desktop
e::Send("#e")           ; File Explorer
l::Send("#l")           ; Lock screen
i::Send("#i")           ; Settings
s::Send("#s")           ; Search
v::Send("#v")           ; Clipboard history
x::Send("#x")           ; Quick Link menu
a::Send("#a")           ; Action Center
p::Send("#p")           ; Project/Display
m::Send("#m")           ; Minimize all
b::Send("#b")           ; Focus system tray
Tab::Send("#Tab")       ; Task View
.::Send("#.")           ; Emoji picker
`;::Send("#;")          ; Emoji picker (alternate)


; Arrow keys for window snapping
Left::{
    Send("{Blind}{LWin down}{Left}{LWin up}")
}
Right::{
    Send("{Blind}{LWin down}{Right}{LWin up}")
}
Up::{
    Send("{Blind}{LWin down}{Up}{LWin up}")
}
Down::{
    Send("{Blind}{LWin down}{Down}{LWin up}")
}


; Number keys for taskbar apps
1::Send("#1")
2::Send("#2")
3::Send("#3")
4::Send("#4")
5::Send("#5")
6::Send("#6")
7::Send("#7")
8::Send("#8")
9::Send("#9")
0::Send("#0")


; With Shift
+s::Send("#+s")         ; Screenshot (Snipping Tool)
+Left::{
    Send("{Blind}{LWin down}{Shift down}{Left}{Shift up}{LWin up}")
}
+Right::{
    Send("{Blind}{LWin down}{Shift down}{Right}{Shift up}{LWin up}")
}


; With Ctrl
^d::Send("#^d")         ; New virtual desktop
^Left::{
    Send("{Blind}{LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}")
}
^Right::{
    Send("{Blind}{LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}")
}
^F4::Send("#^F4")       ; Close virtual desktop


#HotIf
