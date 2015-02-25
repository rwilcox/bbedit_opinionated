tell application "BBEdit"
	tell window 1
		set dialog_results to display dialog "wrap text in?" default answer "****"
		set wrapping_string to text returned of dialog_results
		get selection as string
		set selection to wrapping_string & return & (selection as string) & return & wrapping_string
	end tell
end tell