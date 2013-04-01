tell application "BBEdit"
	tell front window
		activate
		set lineNum to startLine of selection
		set leng to length of line lineNum
		-- Move cursor to start of line
		if leng > 0 then
			select insertion point after (character leng of line lineNum)
		end if
		set text of selection to "
"
		select insertion point after (selection)
		
	end tell
end tell