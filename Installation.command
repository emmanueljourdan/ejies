#!/bin/bash
# This file must be saved in UTF-8

clear

echo "------------------------"
echo "-- ejies Installation --"
echo "------------------------"
echo ""
echo ""

# sleep 1 # c'est plus long mais �a fait joli

echo -ne "This command line will install the ejies for you...\n"

PathDeLInstalleur=$0
DossierDeLInstalleur=$(dirname $PathDeLInstalleur)

cd /Library/Application\ Support/Cycling\ \'74/

echo -ne "installing:\n"

echo -ne "- init files (/Library/Application Support/Cycling '74/init/)"
/Developer/Tools/CpMac -r $DossierDeLInstalleur/ejies-init/* init/ && echo -ne "... done.\n"

echo -ne "- jsui files (/Library/Application Support/Cycling '74/jsui-library/)"
/Developer/Tools/CpMac -r $DossierDeLInstalleur/ejies-jsui/* jsui-library/ && echo -ne "... done.\n"

echo -ne "- jsextensions file (/Library/Application Support/Cycling '74/jsextensions/)"
/Developer/Tools/CpMac -r $DossierDeLInstalleur/ejies-jsextensions/* jsextensions/ && echo -ne "... done.\n"

if [ -e "/Applications/MaxMSP 4.5/" ] ; then
	echo -ne "- extras file (/Applications/MaxMSP*/patches/extras/)"
	/Developer/Tools/CpMac -r $DossierDeLInstalleur/ejies-extras/* /Applications/MaxMSP*/patches/extras/ && echo -ne "... done.\n"

	echo -ne "- prototypes (/Applications/MaxMSP*/patches/object-prototypes/)"
	/Developer/Tools/CpMac -r $DossierDeLInstalleur/ejies-prototypes/* /Applications/MaxMSP*/patches/object-prototypes/ && echo -ne "... done.\n"

	echo -ne "- inspectors (/Applications/MaxMSP*/patches/inspectors)"
	/Developer/Tools/CpMac -r $DossierDeLInstalleur/ejies-insp/* /Applications/MaxMSP*/patches/inspectors/ && echo -ne "... done.\n"
fi

echo -ne "Would you like to install the externals and the help files? (Y/N) "
read Reponse

if [ $Reponse == "O" ] ; then
	echo -ne "- objects (/Library/Application Support/Cycling '74/externals/ejies-obj)"
	/Developer/Tools/CpMac -r $DossierDeLInstalleur/ejies-obj ejies-obj && echo -ne "... done.\n"

	if [ -e "/Applications/MaxMSP 4.5/" ] ; then
		echo -ne "- help files (/Applications/MaxMSP*/max-help/ejies-help)"
		/Developer/Tools/CpMac -r $DossierDeLInstalleur/ejies-help /Applications/MaxMSP*/max-help/ejies-help && echo -ne "... done.\n"
	fi

fi

echo -ne "\n\nInstalling the shortcuts now..."
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
