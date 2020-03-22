; 
; Click home to start bridging
; Start facing (0, 90, 180, -90), 80 (under f3 menu)
; Click end to stop the program
; Click delete to reload the program
; only use if it's gone wild => Click ctrl + alt + esc to stop the program


Home::
Run C:\Users\exion\Desktop\akh\breezily pt2.exe ; change for your directory
breakloop:=0
i:=0
Send {s down}
Loop, 100 {
    i++
    if(i>14){
        Send {Shift down}
        Send {s up}
        Send {d up}
        Send {a up}
        Process, Close, breezily pt2.exe
        Send {w down}
        Sleep, 10
        Send {w up}
        Send {Shift up}
        Break
    }
    Send {a down}
    Sleep, 132
    Send {a up}
    
    if(i>13){
        Send {Shift down}
        Send {s up}
        Send {d up}
        Send {a up}
        Send {w down}
        Sleep, 10
        Send {w up}
        Send {Shift up}
        Continue
    }

    if(breakloop){
        Break
    }
    Sleep, 1
    Send {d down}
    Sleep, 132
    Send {d up}

    if(breakloop){
        Send {s up}
        Break
    }
    if(i>13){
        Send {Shift down}
        Send {s up}
        Send {d up}
        Send {a up}
        Send {w down}
        Sleep, 10
        Send {w up}
        Send {Shift up}
        Continue
    }
}
Return

End::
breakloop:=1
Send {s up}
Send {d up}
Send {a up}
Process, Close, breezily pt2.exe
Return

Del::Reload
^!Esc::ExitApp