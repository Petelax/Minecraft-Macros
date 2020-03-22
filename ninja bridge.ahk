; Click home to start bridging
; Start facing (0, 90, 180, -90), 80 (under f3 menu)
; Click end to stop the program
; Click delete to reload the program
; only use if it's gone wild => Click ctrl + alt + esc to stop the program

Home:: 
    loopstop = 0
    Send {s down}
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
        if loopstop = 1
        {
            loopstop = 0
            break
        }
    }
    Send {s up}
    Return

Del::Reload

End::
    loopstop = 1
    return

^!Esc::ExitApp