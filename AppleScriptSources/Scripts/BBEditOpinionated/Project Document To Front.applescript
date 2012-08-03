tell application "BBEdit"
	set docs to every project document
	repeat with current in docs
		if file of current is not missing value then
			select current
			exit repeat
		end if
	end repeat
end tell