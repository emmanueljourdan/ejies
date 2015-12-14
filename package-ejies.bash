#!/bin/bash

_root="$PWD"

# clear
if [ $# == 2 ] ; then
	echo -ne "Starting Packaging of ejies version $1.$2\n"

	echo -ne "Copying folders:\n"
	git checkout-index -f -a --prefix=ejies_tmp/ejies_$1.$2/

	cd ejies_tmp
	_dst="$PWD"

	echo -ne "Copie de javadoc (I hope it's up to date)... "
	cd "$_root"
	cp -R java-classes/ejies-javadoc "$_dst"/ejies_$1.$2/java-doc
	echo -ne "done\n"

	echo -ne "Removing unnecessary files... "
	cd "$_dst"/ejies_$1.$2/
	mv README.md readme.md
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

	echo "build finished: ejies_$1.$2.zip is on the ~/Desktop"
	open ~/Desktop
	exit 0
fi
echo -ne "Usage: Version number missing...\n./package-ejies.bash 3 03b74\n\n"

