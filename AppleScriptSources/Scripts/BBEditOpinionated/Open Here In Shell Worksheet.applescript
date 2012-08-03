tell application "BBEdit" to set theFile to file of document 1
tell application "Finder" to set theFolder to (container of file theFile) as alias
set theUnixPath to POSIX path of theFolder

set output to return & "cd '" & theUnixPath & "'; pwd"
tell application "BBEdit"
	set uws to Unix worksheet window
	tell uws
		select insertion point after last character
		set selection to output
		select
	end tell
end tell