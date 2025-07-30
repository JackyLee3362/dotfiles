#Requires AutoHotkey v2.0

; ^ => ctrl
; + => shift
; ! => alt
; # => win
!r:: {
    Reload
    Sleep 1000 ; 如果成功, 则 reload 会在 Sleep 期间关闭这个实例, 所以下面这行语句永远不会执行.
    Result := MsgBox("The script could not be reloaded. Would you like to open it for editing?", , 4)
    if Result = "Yes"
        Edit
    return
}
!d:: {
    ; MsgBox WinExist("A")
    ; WinActivate "ahk_class ConsoleWindowClass"
    WinActivate "ahk_exe notepad.exe"
    Run "https://www.baidu.com"
}

::btw::
{
    MsgBox "You typed btw."
}
; 按键：Win + Alt + C 打开 C 盘
#!C:: Run "C:\"
; 按键：Win + Alt + Z 打开桌面
#!Z:: Run A_Desktop

; 测试：长按短按
#!D:: {
    KeyWait("D")
    if (A_TimeSinceThisHotkey < 300) {
        ; 按下小于300ms，打开Downloads文件夹
        Run "D:/Dropbox"
    } else {
        ; 按下超过300ms，打开docs文件夹
        Run "D:/Onedrive"
    }
    return
}

!s:: {
    Run "http://www.google.com"
    ; Run "http://www.baidu.com"
}

vscode := "D:/Program/Microsoft VS Code/Code"
#n:: {
    Run vscode " D:/Dropbox/Note/ob-note"
}
#p:: {
    Run vscode " D:/Dropbox/Note/py-note"
}
#j:: {
    Run vscode " D:/Dropbox/Note/java-note"
}
#a:: {
    Run vscode " D:/Dropbox/Lab/ahk"
}

#HotIf WinActive("ahk_exe msedge.exe")
; 设置标签页快捷键
!1:: {
    Send("^1")
}
!2:: {
    Send("^2")
}
!3:: {
    Send("^3")
}
!4:: {
    Send("^4")
}
!5:: {
    Send("^5")
}
!6:: {
    Send("^6")
}
!7:: {
    Send("^7")
}
!8:: {
    Send("^8")
}
!9:: {
    Send("^9")
}
