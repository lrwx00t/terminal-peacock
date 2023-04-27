#!/usr/bin/osascript

on changeTerminalColors(colorName)
	if colorName is "red" then
		return {65535, 0, 0}
		
	else if colorName is "green" then
		return greenColor
		
	else if colorName is "blue" then
		return {0, 0, 65535}
		
	else
		error "Invalid color name: " & colorName
	end if
end changeTerminalColors

on run argv
	
	set titleText to item 1 of argv
	set colorText to item 2 of argv
	set redColor to {65535, 0, 0}
	set greenColor to {0, 65535, 0}
	set blueColor to {0, 0, 65535}
	
	
	tell application "Terminal"
		
		tell selected tab of window 1
			set custom title to titleText
			set background color to my changeTerminalColors("red")
		end tell
	end tell
	
end run

