; 
; Click home to start bridging
; Start facing (0, 90, 180, -90), 80 (under f3 menu)
; Click end to stop the program
; Click delete to reload the program
; only use if it's gone wild => Click ctrl + alt + esc to stop the program

Home::
breakloop:=0

Loop, 100 
{
    Run C:\Users\exion\Desktop\akh\breezily pt2.exe ; change for your directory

    j:=0
    Send {s down}
    Loop, 100 {
        j++
        if(j>14){
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
        
        if(j>13){
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
        if(ji>13){
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
    Sleep, 30 ;moves right at end of breezily bridge 
    Send {d up}
    DllCall("mouse_event", uint, 1, int, 0, int, -750)
    Sleep, 10
    DllCall("mouse_event", uint, 1, int, 0, int, -750)
    Sleep, 50
    Click, Right ;Places block in front 

    if(breakloop){
        Send {s up}
        Exit
    }

    Sleep, 15
    DllCall("mouse_event", uint, 1, int, 0, int, 750)
    Sleep, 10
    DllCall("mouse_event", uint, 1, int, 0, int, 750)
    Sleep, 25
    Send {w down}
    Sleep, 350
    Send {w up}
    Sleep, 15
    DllCall("mouse_event", uint, 1, int, 0, int, 20)
    Sleep, 100
    Send {Shift down}
    Send {d down}
    Sleep, 700
    Send {d up}
    Sleep, 15
    Send {a down}
    Sleep, 12
    Send {a up}
    Sleep, 65
    Send {Shift up} ; at edge of right on end of 1st breezily

    if(breakloop){
        Send {s up}
        Exit
    }

    Sleep, 100
    DllCall("mouse_event", uint, 1, int, -200, int, -500) ;building new allignment tool 
    Sleep, 150
    Click, Right
    Sleep, 15
    Click, Right
    Sleep, 50
    Send {a down}
    Sleep, 155
    Send {a up}
    DllCall("mouse_event", uint, 1, int, 800, int, 0)
    Sleep, 25
    DllCall("mouse_event", uint, 1, int, 800, int, -100)
    Sleep, 150
    Click, Right
    Sleep, 20

    if(breakloop){
        Send {s up}
        Exit
    }

    Send {w down} ; walking to alligment blocks 
    Sleep, 50
    Send {w up}
    Sleep, 150
    DllCall("mouse_event", uint, 1, int, -1800, int, 700)
    Sleep, 10
    DllCall("mouse_event", uint, 1, int, -285, int, 90) ; 0 80 
    Send {d down}
    Sleep, 50
    Send {d up}
    Send {w down}
    Sleep, 50
    Send {w up}
    Sleep, 150
    

    
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