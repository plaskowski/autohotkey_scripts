SetTitleMatchMode, 2
Numpad1::
  If WinActive("Code Review")
  {
	MouseGetPos, mouseStartX, mouseStartY, windowId
	WinGetPos, X, Y, Width, Height, A
	WinGetPos, X, Y, Width, Height, A ; "A" to get the active window's pos.
	; MsgBox, The active window is at %X%`,%Y%,%Width%,%Height%
	
	bookmarkX := X + 150
	bookmarkY := Y + 100
	MouseClick, left, %bookmarkX%, %bookmarkY%
	
	linkX := X + Width - 25
	linkY := Y + Height - 20
	MouseClick, right, %linkX%, %linkY%
	Send {Up}{Up}{Enter}
	url := clipboard
	url := StrReplace(url, "https://source.syncron.team/", "")
	; MsgBox, %url%
	
	WinActivate, ahk_exe idea64.exe
	Send ^+R
	SendInput %url%
	Sleep, 500
	Send {Enter}
	
	MouseMove, %mouseStartX%, %mouseStartY%, 1
	Send +{Down}
  }
  else
  {
    Send 1
  }