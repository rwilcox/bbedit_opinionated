-- Send Text Through Ad Hoc Shell Command
-- by Ryan Wilcox
-- released in the Public Domain
-- 
-- Parts of this script were derived from an early, currently unavailiable, script from Bare Bones Software


property adhocCommand : "wc -w"

tell application "BBEdit"
	
	set oldClip to the contents of clipboard
	
	tell application "BBEdit"
		if not (exists text window 1) then
			display alert "This script requires an open text window."
			return
		end if
		if length of selection of text window 1 is 0 then
			select text 1 of text window 1
		end if
		set _selectedText to selection of text window 1 as Unicode text
	end tell
	
	set the clipboard to _selectedText
	
	set dialogRes to display dialog "Enter your Unix Command" default answer adhocCommand buttons {"Cancel", "Run, Replacing Text", "Run, Reporting Result"} default button 2
	set adhocCommand to text returned of result
	
	set output to do shell script "pbpaste | " & adhocCommand
	
	if button returned of dialogRes is "Run, Replacing Text" then
		tell application "BBEdit"
			set selection of text window 1 to output
		end tell
	else
		display dialog "The result was: " & output
	end if
	
	set the clipboard to oldClip -- set it back to be nice
end tell