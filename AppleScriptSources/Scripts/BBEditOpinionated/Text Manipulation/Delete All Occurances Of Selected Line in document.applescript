tell application "BBEdit"
	
	set delete_me to selection as string
	replace delete_me using "" searching in text 1 of text document 1 options {search mode:literal, starting at top:true, wrap around:true, backwards:false, case sensitive:false, match words:false, extend selection:false}
end tell
