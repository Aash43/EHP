
    
;===============================================
;Shortcuts
;===============================================
;Hotkey	 ^x,   StartHack        ;Starts the hack
;Hotkey  !^s,  StopProgram      ;Stops the program
;Hotkey  ^z,   GetManual        ;Gets the manual 
    
Gui, Show, w510 h210, Shortcuts
Gui, Add, Pic, w499 h194 vpic_get, images/ExamHackPng.png
Gui, Show,, EHP 

#IfWinActive, ahk_class Chrome_WidgetWin_1

^x::
    ;Send ^{J}
    ;sleep, 2000
    ;Send {tab}
    ;sleep, 200
    clipboard=document.getElementsByClassName("btn btn-lg secondaryStyle noCapitalize big")[0].click();
    ClipWait, 2
    WinActivate, Target
    send ^v
    Sleep, 200
    send {enter}
    Sleep, 1000
    clipboard=window.removeEventListener('blur', getEventListeners(window).blur[0].listener)
    ClipWait, 2
    WinActivate, Target
    send ^v
    Sleep, 200
    send {enter}
    Sleep, 200
    clipboard=document.removeEventListener("fullscreenchange" ,getEventListeners(document).fullscreenchange[0].listener)
    ClipWait, 2
    WinActivate, Target
    send ^v
    Sleep, 200
    send {enter}
    Sleep, 10000
    ;Send {F11}
    ;Sleep, 400
    Send ^{J}
    return

#IfWinActive

^z::
    Run, chrome.exe manual.html
    return

!^s::
    ESC:
    GuiClose:
    GuiEscape:
    ExitApp
    return  