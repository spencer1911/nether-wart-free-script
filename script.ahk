; CREATED BY SPENCER!!! 15 EUROS 115M COINS WORTH!!!
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
#WinActivateForce

Gui -Resize -MinimizeBox -MaximizeBox
Gui Font, s11, Ms Shell Dlg 2
Gui Font
Gui Font, s20
Gui Add, Text, x20 y7 w305 h45 +0x200, SPENCER's Auto Money
Gui Font
Gui Font, s11, Ms Shell Dlg 2
Gui Add, Text, x-28 y66 w410 h15 +0x10
Gui Add, Button, hWndhBtnStart gStart x15 y214 w317 h37, &Start
Gui Add, Edit, vEditSide x128 y86 w209 h21, 31500
Gui Add, Text, x7 y84 w113 h23 +0x200, Side-Walk Time:
Gui Add, Text, x7 y115 w120 h23 +0x200, Front-Walk Time:
Gui Add, Edit, vEditFront x127 y116 w210 h21, 3000
Gui Add, Edit, vEditBreak x128 y147 w209 h21, o
Gui Add, Text, x7 y146 w120 h23 +0x200, Break Button:

Gui Show, w345 h260, auto money script
Return

Start:
GuiControlGet, EditSide
GuiControlGet, EditFront
GuiControlGet, EditBreak

if (!WinActive("Badlion")){ ; change to the window that u want
    WinActivate, Badlion 
    sleep, 1000 
    ControlSend,, {Escape}, ahk_exe javaw.exe
}
if (WinActive("Badlion")){ ; change to the window that u want
    ControlSend,, {Escape}, ahk_exe javaw.exe
}

loop, 16 {
    ControlSend,, {w down}, ahk_exe javaw.exe
    sleep, 1000
    ControlSend,, {w up}, ahk_exe javaw.exe
    
    ControlSend,, {%EditBreak% down}, ahk_exe javaw.exe ; my break button lole
    
    ControlSend,, {a down}, ahk_exe javaw.exe
    sleep, %EditSide%
    ControlSend,, {a up}, ahk_exe javaw.exe
    sleep, 100
    ControlSend,, {s down}, ahk_exe javaw.exe
    ControlSend,, {a down}, ahk_exe javaw.exe
    sleep, 500
    ControlSend,, {s up}, ahk_exe javaw.exe
    ControlSend,, {a up}, ahk_exe javaw.exe
    sleep, 100
    ControlSend,, {w down}, ahk_exe javaw.exe
    sleep, %EditFront%
    ControlSend,, {w up}, ahk_exe javaw.exe
    sleep, 350
    ControlSend,, {d down}, ahk_exe javaw.exe
    sleep, %EditSide%
    ControlSend,, {d up}, ahk_exe javaw.exe
    ControlSend,, {%EditBreak% up}, ahk_exe javaw.exe
}
Return



GuiSize:
    If (A_EventInfo == 1) {
        Return
    }

Return

GuiEscape:

GuiClose:
    ExitApp
    Suspend 
    Exit 
    Pause 
    ExitApp
