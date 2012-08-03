--Display Dialog and Get Input
-- From: https://groups.google.com/d/msg/bbedit/PAlHap-lXSk/Ysu1DY-fGHwJ

display dialog "Grep Search for..." default answer ""


--Get Answer & Return Comment

set theSearch to (text returned of result)


tell application "BBEdit"
	
	try
		
		find theSearch searching in text of front text window options {search mode:grep, starting at top:false, wrap around:false, backwards:false, case sensitive:false, match words:false, extend selection:false} with selecting match
		
	end try
	
end tell