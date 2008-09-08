#!/bin/bash
# This file must be saved in UTF-8


################################
# Uninstallations Methodes
################################
function remove5 {
	echo "Removing ejies for MaxMSP 5.:";
	
	doRemove;
}

function doRemove {
	if [ -e "$C74Folder" ] ; then
		echo -ne "- init files ($C74Folder/init/)"
		rm -f "$C74Folder/init"/ejies-* && echo -ne "... done.\n"
		
		echo -ne "- jsui files ($C74Folder/jsui-library/)"
		rm -f "$C74Folder/jsui-library/"ej.* && echo -ne "... done.\n"
		
		echo -ne "- jsextensions file ($C74Folder/jsextensions/)"
		rm -f "$C74Folder/jsextensions/"ejies* && echo -ne "... done.\n"
	
		echo -ne "- objects, help files & co ($C74Folder/ejies)"
		rm -Rf "$C74Folder/ejies/" && echo -ne "... done.\n"
	
		echo -ne "- java lib file ($C74Folder/java/lib/ej.jar)"
		rm -Rf "$C74Folder/java/lib/"ej.jar && echo -ne "... done.\n"
	
	else
		echo -ne "Sorry, $C74Folder doen't exist. Init, jsui and jsextensions can't be uninstalled.\n"
	fi
	
	if [ -e "$maxAppFolder" ] ; then
		echo -ne "- extras file ($maxAppFolder/patches/extras/)"
		rm -f "$maxAppFolder/patches/extras/"ejies* && echo -ne "... done.\n"
	
		echo -ne "- prototypes ($maxAppFolder/patches/object-prototypes/)"
		rm -f "$maxAppFolder/patches/object-prototypes/bpatcher/"ej.*
		rm -f "$maxAppFolder/patches/object-prototypes/jsui/"ej.*
		rm -f "$maxAppFolder/patches/object-prototypes/pictctrl/"ej.*
		rm -f "$maxAppFolder/patches/object-prototypes/pictslider/"ej.* && echo -ne "... done.\n"
	
# 		echo -ne "- inspectors ($maxAppFolder/patches/inspectors)"
# 		rm -f "$maxAppFolder/patches/inspectors"/ej.* && echo -ne "... done.\n"
	
		echo -ne "- images ($maxAppFolder/patches/picts/)"
		rm -Rf "$maxAppFolder/patches/pict"/ej.* && echo -ne "... done.\n"
	
		echo -ne "- ejies-javadoc ($maxAppFolder/java-doc/"
		rm -Rf "$maxAppFolder/java-doc/"ejies-javadoc && echo -ne "... done.\n"
		
	else
		echo -ne "Sorry, $maxAppFolder doesn't exist. Extra and prototypes can't be uninstalled.\n"
	fi
	
	echo -ne "\n";

}


################################
# UnInstallation process
################################
clear

echo "-------------------------"
echo "--- ejies Uninstaller ---"
echo "-------------------------"
echo ""
echo ""


################################
#  Version checking
################################
whichVersion=0;

# if [ -e "/Applications/MaxMSP 4.5" ]; then
# 	whichVersion=1;
# fi
# 
# if [ -e "/Applications/MaxMSP 4.6" ]; then
# 	let "whichVersion = $whichVersion + 2";
# fi
# 
# if [[ $whichVersion == 0 ]]; then
# 	echo "MaxMSP is not installed in the /Applications folder. The ejies's automatic uninstallation is not possible.";
# 	exit 1;
# fi
# 
# if [[ $whichVersion == 1 ]]; then 
# 	remove45;	
# elif [[ $whichVersion == 2 ]]; then 
# 	remove46;
# elif [[ $whichVersion == 3 ]]; then
# 	remove45;	
# 	remove46;
# fi

if [[ -e "/sysbuild/Development" ]]; then
	maxAppFolder="/sysbuild/Development";
	C74Folder="$maxAppFolder/Cycling '74";
	remove5;
fi

maxAppFolder="/Applications/Max5";
C74Folder="$maxAppFolder/Cycling '74";
remove5;

echo -ne "done"
echo -ne "\n\nend of the installation... enjoy!\n"
echo -ne "(you can quit the Terminal now...)\n"

exit 0;
