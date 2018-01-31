Numpad0::
	Send ^{Left}
	Send ^{Left}
	Send ^{Left}
	Send ^+{Right}
	Send ^+{Right}
	Send ^+{Right}
	Send ^c
	Url := RegExReplace(Clipboard, "^.*$", "https://pm.syncron.net/jira/browse/$0")
	Run, %Url%
