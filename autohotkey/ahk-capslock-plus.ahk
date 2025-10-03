#Requires AutoHotkey v2.0

CapsLock & h:: {
    Send("{Blind}{Left Down}")
    KeyWait("h")
    Send("{Blind}{Left Up}")
}

CapsLock & j:: {
    Send("{Blind}{Down Down}")
    KeyWait("j")
    Send("{Blind}{Down Up}")
}

CapsLock & k:: {
    Send("{Blind}{Up Down}")
    KeyWait("k")
    Send("{Blind}{Up Up}")
}

CapsLock & l:: {
    Send("{Blind}{Right Down}")
    KeyWait("l")
    Send("{Blind}{Right Up}")
}

CapsLock & m:: {
    SendInput("{Blind}{End Down}")
    KeyWait("m")
    SendInput("{Blind}{End Up}")
}

CapsLock & n:: {
    SendInput("{Blind}{Home Down}")
    KeyWait("n")
    SendInput("{Blind}{Home Up}")
}

CapsLock & i:: {
    SendInput("{Blind}{PgDn Down}")
    KeyWait("i")
    SendInput("{Blind}{PgDn Up}")
}

CapsLock & u:: {
    SendInput("{Blind}{PgUp Down}")
    KeyWait("u")
    SendInput("{Blind}{PgUp Up}")
}

CapsLock & d:: {
    SendInput("{Blind}{Backspace Down}")
    KeyWait("d")
    SendInput("{Blind}{Backspace Up}")
}

CapsLock & s:: {
    SendInput("{Blind}{Delete Down}")
    KeyWait("s")
    SendInput("{Blind}{Delete Up}")
}

CapsLock & Space:: {
    if (GetKeyState("CapsLock", "T")) {
        SetCapsLockState("AlwaysOff")
    } else {
        SetCapsLockState("AlwaysOn")
    }
}

; CapsLock:: Send("{ESC}")
; CapsLock:: Send("{VKC0}") ; mapped to `
; CapsLock & c:: Run("calc.exe")
; CapsLock & n:: Run("notepad.exe")