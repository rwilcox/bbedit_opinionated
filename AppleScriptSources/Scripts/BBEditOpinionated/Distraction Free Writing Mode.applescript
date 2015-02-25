tell application "BBEdit"
	tell window 1
		set show line numbers to (not show line numbers)
		set show toolbar to (not show toolbar)
		set show gutter to (not show gutter)
		set show navigation bar to (not show navigation bar)
		--		set show status bar to false
	end tell
end tell