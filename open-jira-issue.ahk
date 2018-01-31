Numpad0::
  Send ^c
  Sleep 100
  issueNumber := Clipboard
  
  if (RegExMatch(issueNumber, "^\d+$") > 0) {
    Send ^{Left}
    Send ^{Left}
    Send ^{Left}
    Send ^+{Right}
    Send ^+{Right}
    Send ^+{Right}
    Send ^c
    Sleep 100
    issueNumber := Clipboard
  } else if (RegExMatch(issueNumber, "^[A-Z]+-\d+$") > 0) {
    ; have whole issue already
  } else {
    return
  }
  
  Url := RegExReplace(Clipboard, "^.*$", "https://pm.syncron.net/jira/browse/$0")
  Run, %Url%
