#!/bin/bash

_root="$PWD"

mkdir -p ejies_tmp
cd  ejies_tmp
_dst="$PWD"


# clear
if [ $# == 2 ] ; then
	echo -ne "Starting Packaging of ejies version $1.$2\n"
	
	echo -ne "Getting source... "
	cvs -Q export -r ejies_$1-$2 -d ejies_$1.$2 ejies
	echo -ne "done\n"
	
	echo -ne "Creating jar..."
	cd "$_dst"/ejies_$1.$2/ejies-java
	jar -cf ej.jar ej/*.class ej/*.java
	echo -ne "done\n"
	rm -Rf ej
	
	echo -ne "Copie de javadoc (I hope it's up to date)... "
	cd "$_root"
	cp -R ejies-java/ejies-javadoc "$_dst"/ejies_$1.$2/
	echo -ne "done\n"
	
	echo -ne "Removing bash... "
	cd "$_dst"/ejies_$1.$2/
	rm -f *.bash
	echo -ne "done\n"	
	
	echo -ne "Making zip on the Desktop... "
	cd "$_dst"
	zip -qrX "ejies_$1.$2.zip" "ejies_$1.$2"
	echo -ne "done\n"
	mv ejies*.zip ~/Desktop
	
	
	echo -ne "Removing ejies_tmp... "
	cd "$_root"
	rm -Rf ejies_tmp
	echo -ne "done\n"	
#	../install-ejies.bash ejies_$1.$2

	echo "build finished: ejies_$1.$2.zip is on the ~/Desktop"
	open ~/Desktop
	exit 0
fi
echo -ne "Usage: folder to install missing...\n./package-ejies.bash /path/to/some/folder/where/you/want/the/archive/to/be/stored\n\n"

