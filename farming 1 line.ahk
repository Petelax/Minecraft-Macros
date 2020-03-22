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
    if(b) {
        Break
    }
    MouseClick
    MouseClick, Right
    Send {w down}
    Sleep, 210
    Send {w up}
    Sleep, 500
    
}

Send {w up}

Return

^!Esc::ExitApp

Insert::b:=1