; ctrl + alt + esc closes the program
; home starts farming
; insert stops farming
; only use if it's gone wild => Click ctrl + alt + esc to stop the program

b:=0

Home::
;DllCall("mouse_event", uint, 1, int, 100, int, 0) <-- this is move mouse command
b:=0
While, (i<100 && !GetKeyState(Insert)) {
    i++
    DllCall("mouse_event", uint, 1, int, 235, int, 0)
    Sleep, 10
    MouseClick
    Sleep, 10
    MouseClick, Right
    Sleep, 100
    DllCall("mouse_event", uint, 1, int, -235, int, 0)
    Sleep, 10
    MouseClick
    Sleep, 10
    MouseClick, Right
    Sleep, 20
    Send {w down}
    Sleep, 195
    Send {w up}
    Sleep, 100
    if(b) {
        Break
    Sleep, 1
    }
}

Send {w up}

Return

^!Esc::ExitApp

Insert::b:=1