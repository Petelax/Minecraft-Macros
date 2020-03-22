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
        Send {s up}
        Exit
    }
    Sleep, 1
    Send {d down}
    Sleep, 132
    Send {d up}

    if(breakloop){
        Send {s up}
        Exit
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
;End of loop Breezily bridge
Send {d down}
Sleep, 30 ;moves left at end of breezily bridge 
Send {d up}
DllCall("mouse_event", uint, 1, int, 0, int, -750)
Sleep, 10
DllCall("mouse_event", uint, 1, int, 0, int, -750)
Sleep, 50
Click, Right ;Places block in front 
Sleep, 15
Send {w down}
Sleep, 350
Send {w up}
Sleep, 10
Click
Sleep, 15
DllCall("mouse_event", uint, 1, int, 0, int, 750)
Sleep, 10
DllCall("mouse_event", uint, 1, int, 0, int, 750)
Sleep, 15
DllCall("mouse_event", uint, 1, int, 0, int, 20)
Sleep, 200


Send {s down} ; start of ninja bridge 
Sleep 225
Send {Lshift down}
Sleep 120
Click right
Send {Lshift up}
Loop, 1000
    ;CHANGE THIS NUMBER ABOVE TO INCREASE AMMOUNT OF BLOCKS PLACED (Ammount = X + 1)
{
    Sleep 200
    Send {Lshift down}
    Sleep 140
    Click right
    Sleep 30
    Send {Lshift up}
    if(breakloop){
        Send {s up}
        Exit
    }
    }
Send {s up}


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