#!/bin/bash
# This file must be saved in UTF-8

clear

echo "----------------------"
echo "-- AddShortcuts2Max --"
echo "----------------------"
echo ""
echo ""

sleep 1 # c'est plus long mais �a fait joli

echo "- Removing old shorcuts... (if needed)"
defaults delete com.cycling74.Max NSUserKeyEquivalents 2> /dev/null

sleep 0.5 
echo "- Adding new shorcuts..."
defaults write com.cycling74.Max NSUserKeyEquivalents -dict-add "Restore Origin" "@~R" "Set Origin" "@~S" "Open As Text…" "@~O" "Save As…" "@\$S" Clear "~X" "Paste Replace" "@~V" "Lock Background" "@~L" Redo "@~Z" "Text" "@~N" "New from Clipboard" "@\$N" "Encapsulate" "@\$E" "De-encapsulate" "@\$D"

echo "- Shortcuts added."

echo "" # saut de ligne
echo "To revert, remove the ~/Library/Preferences/com.cycling74.Max.plist file."

sleep 0.5
echo -e "The new shortcuts will be available the next time you start MaxMSP.\n\n"

exit 0