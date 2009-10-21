#!/bin/bash
# This file must be saved in UTF-8 (because of the sortcuts)

################################
# Installations Methodes
################################
function do5Installation {
	echo "Installing ejies for Max 5, in $maxAppFolder:";
	
	doInstallation;
}

function doInstallation {
	if [ -e "$C74Folder" ] ; then

		if [[ ! -e "$C74Folder/ejies" ]] ; then
			mkdir "$C74Folder/ejies";
		fi
		
		echo -ne "- objects ($C74Folder/ejies/ejies-obj)"
		cp -R "$DossierDeLInstalleur"/ejies-obj "$C74Folder/ejies/" && echo -ne "... done.\n"

		echo -ne "- help files ($C74Folder/ejies/ejies-help)"
		cp -R "$DossierDeLInstalleur"/ejies-help "$C74Folder/ejies/" && echo -ne "... done.\n"
		
		echo -ne "- init files ($C74Folder/init/)"
		cp -R "$DossierDeLInstalleur"/ejies-init/* "$C74Folder/init/" && echo -ne "... done.\n"
		
		echo -ne "- jsui files ($C74Folder/jsui-library/)"
		cp -R "$DossierDeLInstalleur"/ejies-jsui/* "$C74Folder/jsui-library/" && echo -ne "... done.\n"
		
		echo -ne "- jsextensions file ($C74Folder/jsextensions/)"
		cp -R "$DossierDeLInstalleur"/ejies-jsextensions/* "$C74Folder/jsextensions/" && echo -ne "... done.\n"
	
		echo -ne "- java lib file ($C74Folder/java/lib/ej.jar)"
		cp -R "$DossierDeLInstalleur"/ejies-java/ej.jar "$C74Folder/java/lib/" && echo -ne "... done.\n"
	else
		echo -ne "Sorry, $C74Folder doesn't exist. Init, jsui and jsextensions can't be installed.\n"
	fi
	
	if [ -e "$maxAppFolder" ] ; then
		echo -ne "- extras file ($maxAppFolder/patches/extras/)"
		cp "$DossierDeLInstalleur"/ejies-extras/ejies-overview.maxpat "$maxAppFolder/patches/extras/" && echo -ne "... done.\n"
	
		echo -ne "- prototypes ($maxAppFolder/patches/object-prototypes/)"
		cp -R "$DossierDeLInstalleur"/ejies-prototypes/* "$maxAppFolder/patches/object-prototypes/" && echo -ne "... done.\n"
	
# 		echo -ne "- inspectors ($maxAppFolder/patches/inspectors)"
# 		cp "$DossierDeLInstalleur"/ejies-insp/* "$maxAppFolder/patches/inspectors/" && echo -ne "... done.\n"
		
		echo -ne "- images ($maxAppFolder/patches/picts)"
		cp -R "$DossierDeLInstalleur"/ejies-pict/* "$maxAppFolder/patches/picts/" && echo -ne "... done.\n"
		
		echo -ne "- ejies-javadoc ($maxAppFolder/java-doc/)"
		cp -R "$DossierDeLInstalleur"/ejies-javadoc "$maxAppFolder/java-doc/" && echo -ne "... done.\n"		
	else
		echo -ne "Sorry, $maxAppFolder/ doesn't exist. Extra and prototypes can't be installed.\n"
	fi

	echo -ne "\n";
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
DossierDeLInstalleur=$(dirname "$PathDeLInstalleur")


################################
#  Version checking
################################
whichVersion=0;

if [ -e "/Applications/Max5" ]; then
	whichVersion=1;
fi

if [ -e "/sysbuild/Development" ]; then
	let "whichVersion = $whichVersion + 2";
fi

if [[ $whichVersion == 0 ]]; then
	echo "Max 5 is not installed in the /Applications folder. The ejies's automatic installation is not possible.";
	exit 1;
fi

echo -ne "Checking version... ";
if [[ $whichVersion == 1 ]]; then 
	echo "MaxMSP 5 is installed.";
elif [[ $whichVersion == 2 ]]; then 
	echo "A sysbuild Developement version is installed.";	# on my C74 computer...
elif [[ $whichVersion == 3 ]]; then
	echo "Max 5 and sysbuild Development build installed.";
fi

if [[ $whichVersion == 1 ]]; then
		maxAppFolder="/Applications/Max5";
		C74Folder="$maxAppFolder/Cycling '74";
		do5Installation;
elif [[ $whichVersion == 2 ]]; then
		maxAppFolder="/sysbuild/Development";
		C74Folder="$maxAppFolder/Cycling '74";
		do5Installation;
elif [[ $whichVersion == 3 ]]; then
		maxAppFolder="/Applications/Max5";
		C74Folder="$maxAppFolder/Cycling '74";
		do5Installation;

		maxAppFolder="/sysbuild/Development";
		C74Folder="$maxAppFolder/Cycling '74";
		do5Installation;
fi

################################
# Fin de l'installation
echo -ne "\nend of the installation... enjoy!\n"
echo -ne "(you can quit the Terminal now...)\n"

sleep 5 # under Snow Leopard it seems to quit really fast the terminal after installing

exit 0;