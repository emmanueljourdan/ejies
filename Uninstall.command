#!/bin/bash
# This file must be saved in UTF-8


################################
# Uninstallations Methods
################################
function doRemove {
	C74Folder="$maxAppFolder/Cycling '74";

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
removedAtLeastOneVersion=0;

echo -ne "Checking version... ";
if [ -e "/Applications/Max5" ]; then
	maxAppFolder="/Applications/Max5";
	
	echo "Uninstalling ejies for Max 5, in $maxAppFolder:";
	doRemove;
	removedAtLeastOneVersion=1;
fi

if [ -e "/Applications/Max6" ]; then
	maxAppFolder="/Applications/Max6";
	
	echo "Uninstalling ejies for Max 6, in $maxAppFolder:";
	doRemove;
	removedAtLeastOneVersion=1;
fi

# on my C74 computer...
if [ -e "/sysbuild/Development" ]; then
	maxAppFolder="/sysbuild/Development";
	
	echo "Uninstalling ejies for Max 6, in $maxAppFolder:";
	doRemove;
	removedAtLeastOneVersion=1;
fi

if [[ $removedAtLeastOneVersion == 0 ]]; then
	echo "Max 5 or 6 is not installed in the /Applications folder. The ejies's automatic uninstallation can't proceed. Sorry...";
	exit 1;
fi

echo -ne "done"
echo -ne "\n\nend of the installation... enjoy!\n"
echo -ne "(you can quit the Terminal now...)\n"

exit 0;
