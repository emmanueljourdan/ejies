#!/bin/bash
# This file must be saved in UTF-8 (because of the sortcuts)

################################
# Installations Methodes
################################
function do45Installation {
	echo "Installing ejies for MaxMSP 4.5:";
	
	maxAppFolder="/Applications/MaxMSP 4.5";
	C74Folder="/Library/Application Support/Cycling '74";
	preferenceFile="com.cycling74.Max";
	
	doInstallation;
}
	
function do46Installation {
	echo "Installing ejies for MaxMSP 4.6:";
	
	maxAppFolder="/Applications/MaxMSP 4.6";
	C74Folder="$maxAppFolder/Cycling '74";
	preferenceFile="com.cycling74.MaxMSP46";
	
	doInstallation;
}

function doInstallation {
	if [ -e "$C74Folder" ] ; then

		if [[ $maxObjectsToBeInstalled == 1 ]] ; then
			echo -ne "- objects ($C74Folder/externals/ejies-obj)"
			cp -R $DossierDeLInstalleur/ejies-obj "$C74Folder/externals/" && echo -ne "... done.\n"
		fi
		
		echo -ne "- init files ($C74Folder/init/)"
		cp -R $DossierDeLInstalleur/ejies-init/* "$C74Folder/init/" && echo -ne "... done.\n"
		
		echo -ne "- jsui files ($C74Folder/jsui-library/)"
		cp -R $DossierDeLInstalleur/ejies-jsui/* "$C74Folder/jsui-library/" && echo -ne "... done.\n"
		
		echo -ne "- jsextensions file ($C74Folder/jsextensions/)"
		cp -R $DossierDeLInstalleur/ejies-jsextensions/* "$C74Folder/jsextensions/" && echo -ne "... done.\n"
	
		echo -ne "- java externals file ($C74Folder/java/classes)"
		cp -R $DossierDeLInstalleur/ejies-java/* "$C74Folder/java/classes/" && echo -ne "... done.\n"
	else
		echo -ne "Sorry, $C74Folder doen't exist. Init, jsui and jsextensions can't be installed.\n"
	fi
	
	if [ -e "$maxAppFolder" ] ; then

		if [[ $maxObjectsToBeInstalled == 1 ]] ; then
			echo -ne "- help files ($maxAppFolder/max-help/ejies-help)"
			cp -R $DossierDeLInstalleur/ejies-help "$maxAppFolder/max-help/" && echo -ne "... done.\n"
		fi

		echo -ne "- extras file ($maxAppFolder/patches/extras/)"
		cp $DossierDeLInstalleur/ejies-extras/* "$maxAppFolder/patches/extras/" && echo -ne "... done.\n"
	
		echo -ne "- prototypes ($maxAppFolder/patches/object-prototypes/)"
		cp -R $DossierDeLInstalleur/ejies-prototypes/* "$maxAppFolder/patches/object-prototypes/" && echo -ne "... done.\n"
	
		echo -ne "- inspectors ($maxAppFolder/patches/inspectors)"
		cp $DossierDeLInstalleur/ejies-insp/* "$maxAppFolder/patches/inspectors/" && echo -ne "... done.\n"
		
		echo -ne "- images (/Applications/MaxMSP*/patches/picts)"
		cp $DossierDeLInstalleur/ejies-pict/* "$maxAppFolder/patches/picts/" && echo -ne "... done.\n"
		
	else
		echo -ne "Sorry, $maxAppFolder/ doesn't exist. Extra, prototypes and inspectors can't be installed.\n"
	fi

	echo -ne "\n";
}

function installShortcuts {
	# code from AddShortcuts2Max.command
	defaults delete com.cycling74.Max NSUserKeyEquivalents 2> /dev/null
	defaults delete com.cycling74.MaxMSP4.6 NSUserKeyEquivalents 2> /dev/null
	
	sleep 0.5 
	echo -ne "Adding application shorcuts"
	(defaults write $preferenceFile NSUserKeyEquivalents -dict-add "Restore Origin" "@~R" "Set Origin" "@~S" "Open As Text…" "@~O" "Save As…" "@\$S" Clear "~X" "Paste Replace" "@~V" "Lock Background" "@~L" Redo "@~Z" "Text" "@~N" "New from Clipboard" "@\$N" "Encapsulate" "@\$E" "De-encapsulate" "@\$D") && echo -ne "... done.\n"
	
	
	echo -ne "To revert, remove the ~/Library/Preferences/$preferenceFile.plist file.\n"
	
	sleep 0.5
	echo -e "The new shortcuts will be available the next time you start MaxMSP.\n\n"
}
################################





################################
# Installation process
################################
clear
echo "------------------------"
echo "-- ejies Installation --"
echo "------------------------"
echo ""
echo ""


################################
# making PATH
################################
PathDeLInstalleur=$0
DossierDeLInstalleur=$(dirname $PathDeLInstalleur)


################################
#  Version checking
################################
whichVersion=0;

if [ -e "/Applications/MaxMSP 4.5" ]; then
	whichVersion=1;
fi

if [ -e "/Applications/MaxMSP 4.6" ]; then
	let "whichVersion = $whichVersion + 2";
fi

if [[ $whichVersion == 0 ]]; then
	echo "MaxMSP is not installed in the /Applications folder. The ejies's automatic installation is not possible.";
	exit 1;
fi

echo -ne "Checking version... ";
if [[ $whichVersion == 1 ]]; then 
	echo "MaxMSP 4.5 is installed.";
elif [[ $whichVersion == 2 ]]; then 
	echo "MaxMSP 4.6 is installed.";
elif [[ $whichVersion == 3 ]]; then
	echo "MaxMSP 4.5 and MaxMSP 4.6 are installed.";
fi




################################
#  User interactions
################################

# choix des versions
if [[ $whichVersion == 3 ]]; then
	echo -ne "\nWould you like to install the ejies for both versions(MaxMSP 4.5 and MaxMSP 4.6)? (Y/N) ";
	read isInstallBothVersion;
fi

# choix des objets/helps
echo -ne "Would you like to install the externals and the help files in the standart places (C74:/externals/ and MaxMSP 4.*/max-help)? (Y/N) "

read installMaxObjects;
if [[ $installMaxObjects == "Y" || $installMaxObjects == "y" ]] ; then
	maxObjectsToBeInstalled=1;
else
	maxObjectsToBeInstalled=0;
	echo -ne "I can understand that... but you'll have to install it yourself!\n"
fi

# choix pour les shortcuts
echo -ne "Would you like to install the shortcuts? (Y/N) "
read shortcutsAnswer;


# lance le processus d'installation
if [[ $isInstallBothVersion == "Y" || $isInstallBothVersion == "y" ]] ; then
		echo -ne "\nThe ejies will be installed for MaxMSP 4.5 and 4.6.\n";
		do45Installation;
		do46Installation;
else
		echo -ne "\nThe ejies will be installed for MaxMSP 4.6 only.\n";
		do46Installation;
fi

# installation des racourcis
if [[ $shortcutsAnswer == "Y" || $shortcutsAnswer == "y" ]] ; then
	installShortcuts;
fi

################################
# Fin de l'installation
echo -ne "\nend of the installation... enjoy!\n"
echo -ne "(you can quit the Terminal now...)\n"

exit 0

