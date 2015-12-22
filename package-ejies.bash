#!/bin/bash

_src="$PWD"

# clear
if [ $# == 1 ] ; then
	_dst=~/Desktop
	_full_dst=~/Desktop/ejies_$1/

	echo -ne "Starting Packaging of ejies version $1\n"

	echo -ne "Copying folders:\n"
	git checkout-index -f -a --prefix="$_full_dst"

	echo -ne "Copie de javadoc (I hope it's up to date)... "
	cd "$_src"
	cp -R java-classes/ejies-javadoc "$_full_dst"/java-doc
	echo -ne "done\n"

	echo -ne "Removing unnecessary files... "
	cd "$_full_dst"
	rm -fR *.bash graphics
	echo -ne "done\n"

	# no longer make a zip file
	# echo -ne "Making zip on the Desktop... "
	# cd "$_dst"
	# zip -qrX "ejies_$1.zip" "ejies_$1"
	# echo -ne "done\n"
	# mv ejies*.zip ~/Desktop

	# echo -ne "Removing ejies_tmp... "
	# cd "$_src"
	# rm -Rf ejies_tmp
	# echo -ne "done\n"

	echo "build finished!"
	open "$_full_dst"
	exit 0
fi
echo -ne "Usage: Version number missing...\n./package-ejies.bash 3.03b74\n\n"

