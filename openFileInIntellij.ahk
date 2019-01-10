SetTitleMatchMode, 2

url := A_Args[1]
file := RegExReplace(url, "^[^:]+://", "")
	
WinActivate, ahk_exe idea64.exe
Send ^+R
SendInput %file%
Sleep, 500
Send {Enter}

