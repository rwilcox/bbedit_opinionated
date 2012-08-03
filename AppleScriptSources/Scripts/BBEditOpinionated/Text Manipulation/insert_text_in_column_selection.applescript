tell application "BBEdit"
	
	display dialog "What text to do want to insert at your column selection? (make sure to add a space if you need!)" default answer "hello world"
	
	set textToInsert to text returned of the result
	set oldClip to get the clipboard
	set the clipboard to textToInsert
	
	paste column
	set the clipboard to oldClip
end tell
