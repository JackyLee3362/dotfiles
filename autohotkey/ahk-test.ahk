#Requires AutoHotkey v2.0
; ! 表示 alt
!t:: {
    tmp := EnvGet("TMP")
    MsgBox(tmp)
}

#z::Run "https://www.autohotkey.com"  ; Win+Z
