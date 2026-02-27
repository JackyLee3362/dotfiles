#Requires AutoHotkey v2.0

CapsLock & h:: {
    Send("{Blind}{Left Down}")
    Send("{Blind}{Left Up}")
}

CapsLock & j:: {
    Send("{Blind}{Down Down}")
    Send("{Blind}{Down Up}")
}

CapsLock & k:: {
    Send("{Blind}{Up Down}")
    Send("{Blind}{Up Up}")
}

CapsLock & l:: {
    Send("{Blind}{Right Down}")
    Send("{Blind}{Right Up}")
}

CapsLock & m:: {
    SendInput("{Blind}{End Down}")
    SendInput("{Blind}{End Up}")
}

CapsLock & n:: {
    SendInput("{Blind}{Home Down}")
    SendInput("{Blind}{Home Up}")
}

CapsLock & i:: {
    SendInput("{Blind}{PgDn Down}")
    SendInput("{Blind}{PgDn Up}")
}

CapsLock & u:: {
    SendInput("{Blind}{PgUp Down}")
    SendInput("{Blind}{PgUp Up}")
}

CapsLock & d:: {
    SendInput("{Blind}{Backspace Down}")
    SendInput("{Blind}{Backspace Up}")
}

CapsLock & s:: {
    SendInput("{Blind}{Delete Down}")
    SendInput("{Blind}{Delete Up}")
}

CapsLock & e:: {
    ; Blind：忽略修饰键的物理状态，保证发送的修饰键生效
    ; 先按下 Ctrl 和 Shift
    SendInput("{Blind}{Ctrl Down}{Shift Down}")
    ; 发送 e 键的按下+松开
    SendInput("{Blind}e")
    ; 等待 e 键松开（避免重复触发）
    KeyWait("e")
    ; 松开 Ctrl 和 Shift
    SendInput("{Blind}{Ctrl Up}{Shift Up}")
}

CapsLock & g:: {
    SendInput("{Blind}{Ctrl Down}{Shift Down}")
    SendInput("{Blind}g")
    KeyWait("g")
    SendInput("{Blind}{Ctrl Up}{Shift Up}")
}

CapsLock & Space:: {
    if (GetKeyState("CapsLock", "T")) {
        SetCapsLockState("AlwaysOff")
    } else {
        SetCapsLockState("AlwaysOn")
    }
}

; 等待 e 键松开（避免重复触发）
; KeyWait("e")

; CapsLock:: Send("{ESC}")
; CapsLock:: Send("{VKC0}") ; mapped to `
; CapsLock & c:: Run("calc.exe")
; CapsLock & n:: Run("notepad.exe")
