#!/usr/bin/osascript

on run argv
    set titleText to item 1 of argv
    set colorText to item 2 of argv

    tell application "Terminal"
        tell selected tab of window 1
            set custom title to titleText
            set background color to {65535, 0, 0}
        end tell
    end tell
end run
