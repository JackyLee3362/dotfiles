#Requires AutoHotkey v2.0
#SingleInstance Force

global g_CapsMod := false
; ========== 核心：劫持CapsLock，屏蔽原生按键事件 ==========
$*CapsLock:: {
    global g_CapsMod
    g_CapsMod := true
    KeyWait("CapsLock",5)
    g_CapsMod := false
}

#HotIf g_CapsMod
; 普通映射
$h:: Send("{Blind}{Left}")
$j:: Send("{Blind}{Down}")
$k:: Send("{Blind}{Up}")
$l:: Send("{Blind}{Right}")
$m:: Send("{Blind}{End}")
$n:: Send("{Blind}{Home}")
$i:: Send("{Blind}{PgDn}")
$u:: Send("{Blind}{PgUp}")
$d:: Send("{Blind}{Backspace}")
$s:: Send("{Blind}{Delete}")

; 修饰映射
$e:: Send("{Blind}^+e")
$g:: Send("{Blind}^+g")

; CapsLock + 空格 切换大小写
$Space:: SetCapsLockState(!GetKeyState("CapsLock", "T"))
#HotIf