tell application "BBEdit"
	tell text of front text document
		
		-- first, find the end of the previous sentence
		
		-- the \ is because we need to escape the . from grep
		-- (we are searching for a period, not "any character" which is what a period
		-- normally means in grep
		
		-- however, Applescript also uses the \ as an escape character for its purposes
		-- so, our line says, "hey Applescript, we want to pass a literal \ to grep, which then
		-- uses that as an escape code to find a literal .
		
		-- whew
		set bbFind to find "(^|\\.  )[A-Za-z0-9]" selecting match false Â
			options {backwards:true, extend selection:false, returning results:false, search mode:grep, starting at top:false, wrap around:false}
		
		-- this grep pattern finds (the beginning of the line OR ".  ") and the first character
		-- because if this is the first sentence in the paragraph we don't want to
		-- select the between-paragraphs whitespace
		--
		-- when creating a big find command like this, I recommend testing the find
		-- in BBEdit itself a few times, in different situations, to see how it behaves
		-- and then you can incorporate it into the bigger script. (I found the
		-- "selecting between-paragraph whitespace" behavior this way).
		
		if bbFind's found is false then
			-- could not find it. we must be on the first sentence of the document
			set theStart to 1
		else
			set theStart to (bbFind's found object's characterOffset) + ((bbFind's found object's length) - 1)
			-- found object is a BBEdit text_object.
			-- add three to the offset to start after the ".  "
		end if
		
		set lastFind to find "\\.  " selecting match false Â
			options {backwards:false, extend selection:false, returning results:false, search mode:grep, starting at top:false, wrap around:false}
		if lastFind's found is false then
			-- could not find it - we must be at the end of the document
			set theEnd to length of it
			-- "it" means "what Applescript object we are telling right now"
			-- in this case ("tell text of front text document") it's the text_object of the front window
		else
			set theEnd to (lastFind's found object's characterOffset) + ((lastFind's found object's length) - 3)
			-- -3 again because we want to select everything inside what we found
		end if
		
		select (characters theStart thru (theEnd))
	end tell
end tell
