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
pwd
echo -ne "installing:\n"

echo -ne "- init files (/Library/Application Support/Cycling '74/init/)"
cp -R $DossierDeLInstalleur/ejies-init/* init/ && echo -ne "... done.\n"

echo -ne "- jsui files (/Library/Application Support/Cycling '74/jsui-library/)"
cp -R $DossierDeLInstalleur/ejies-jsui/* jsui-library/ && echo -ne "... done.\n"

echo -ne "- jsextensions file (/Library/Application Support/Cycling '74/jsextensions/)"
cp -R $DossierDeLInstalleur/ejies-jsextensions/* jsextensions/ && echo -ne "... done.\n"

if [ -e "/Applications/MaxMSP 4.5/" ] ; then
	echo -ne "- extras file (/Applications/MaxMSP*/patches/extras/)"
	cp -R $DossierDeLInstalleur/ejies-extras/* /Applications/MaxMSP*/patches/extras/ && echo -ne "... done.\n"

	echo -ne "- prototypes (/Applications/MaxMSP*/patches/object-prototypes/)"
	cp -R $DossierDeLInstalleur/ejies-prototypes/* /Applications/MaxMSP*/patches/object-prototypes/ && echo -ne "... done.\n"

	echo -ne "- inspectors (/Applications/MaxMSP*/patches/inspectors)"
	cp -R $DossierDeLInstalleur/ejies-insp/* /Applications/MaxMSP*/patches/inspectors/ && echo -ne "... done.\n"
fi

echo -ne "\nWould you like to install the externals and the help files in the standart places (C74:/externals/ and MaxMSP 4.5/max-help)? (Y/N) "
read Reponse

if [ $Reponse == "Y" ] ; then
	echo -ne "installing:\n"
	echo -ne "- objects (/Library/Application Support/Cycling '74/externals/ejies-obj)"
	cp -R $DossierDeLInstalleur/ejies-obj externals/ && echo -ne "... done.\n"

	if [ -e "/Applications/MaxMSP 4.5/" ] ; then
		echo -ne "- help files (/Applications/MaxMSP*/max-help/ejies-help)"
		cp -R $DossierDeLInstalleur/ejies-help /Applications/MaxMSP*/max-help/ && echo -ne "... done.\n"
	fi
else
	echo -ne "I can understand that... but you'll have to install it yourself!\n"
fi


echo -ne "\nWould you like to install the shortcuts? (Y/N) "
read AutreReponse

if [ $AutreReponse == "Y" ] ; then
	echo -ne "installing the shortcuts now:\n"
	echo "- Removing old shorcuts... (if needed)"
	defaults delete com.cycling74.Max NSUserKeyEquivalents 2> /dev/null
	
	sleep 0.5 
	echo -ne "- Adding new shorcuts"
	(defaults write com.cycling74.Max NSUserKeyEquivalents -dict-add "Restore Origin" "@~R" "Set Origin" "@~S" "Open As Text…" "@~O" "Save As…" "@\$S" Clear "~X" "Paste Replace" "@~V" "Lock Background" "@~L" Redo "@~Z" "Text" "@~N" "New from Clipboard" "@\$N" "Encapsulate" "@\$E" "De-encapsulate" "@\$D") && echo -ne "... done.\n"
	
	
	echo -ne "To revert, remove the ~/Library/Preferences/com.cycling74.Max.plist file.\n"
	
	sleep 0.5
	echo -e "The new shortcuts will be available the next time you start MaxMSP.\n\n"
fi

echo -ne "\n\nend of the installation... enjoy!\n"
echo -ne "(you can quit the Terminal now...)\n"

exit 0
