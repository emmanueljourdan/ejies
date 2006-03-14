#!/bin/bash
# This file must be saved in UTF-8

clear

echo "-------------------------"
echo "--- ejies Uninstaller ---"
echo "-------------------------"
echo ""
echo ""

# sleep 1 # c'est plus long mais a fait joli

echo -ne "This command line will uninstall the ejies for you...\n"

# PathDeLInstalleur=$0
# DossierDeLInstalleur=$(dirname $PathDeLInstalleur)

if [ -e /Library/Application\ Support/Cycling\ \'74/ ] ; then
	cd /Library/Application\ Support/Cycling\ \'74/
	pwd
	echo -ne "uninstalling:\n"
	
	echo -ne "- init files (/Library/Application Support/Cycling '74/init/)"
	rm -f init/ejies-* && echo -ne "... done.\n"
	
	echo -ne "- jsui files (/Library/Application Support/Cycling '74/jsui-library/)"
	rm -f jsui-library/ej.* && echo -ne "... done.\n"
	
	echo -ne "- jsextensions file (/Library/Application Support/Cycling '74/jsextensions/)"
	rm -f jsextensions/ejies* && echo -ne "... done.\n"

	echo -ne "- objects (/Library/Application Support/Cycling '74/externals/ejies-obj)"
	rm -Rf externals/ejies-obj && echo -ne "... done.\n"

	echo -ne "- java externals (/Library/Application Support/Cycling '74/java/classes/ej)"
	rm -Rf java/classes/ej && echo -ne "... done.\n"

else
	echo -ne "Sorry, /Library/Application\ Support/Cycling\ \'74/ doen't exist. Init, jsui and jsextensions can't be uninstalled.\n"
fi

if [ -e "/Applications/MaxMSP 4.5/" ] ; then
	echo -ne "- extras file (/Applications/MaxMSP*/patches/extras/)"
	rm -f /Applications/MaxMSP*/patches/extras/ejies* && echo -ne "... done.\n"

	echo -ne "- prototypes (/Applications/MaxMSP*/patches/object-prototypes/)"
	rm -f /Applications/MaxMSP*/patches/object-prototypes/bpatcher/ej.*
	rm -f /Applications/MaxMSP*/patches/object-prototypes/jsui/ej.*
	rm -f /Applications/MaxMSP*/patches/object-prototypes/pictctrl/ej.* && echo -ne "... done.\n"

	echo -ne "- inspectors (/Applications/MaxMSP*/patches/inspectors)"
	rm -f /Applications/MaxMSP*/patches/inspectors/ej.* && echo -ne "... done.\n"

	echo -ne "- help files (/Applications/MaxMSP*/max-help/ejies-help)"
	rm -Rf /Applications/MaxMSP*/max-help/ejies-help && echo -ne "... done.\n"
else
	echo -ne "Sorry, /Applications/MaxMSP 4.5/ doesn't exist. Extra, prototypes and inspectors can't be uninstalled.\n"
fi

echo "- Removing old shorcuts... (if needed)"
defaults delete com.cycling74.Max NSUserKeyEquivalents 2> /dev/null

echo -ne "\n\nend of the installation... enjoy!\n"
echo -ne "(you can quit the Terminal now...)\n"

exit 0
