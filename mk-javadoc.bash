#!/bin/bash

cd java-classes

if [ -e docflex* ] ; then
	echo "DocFlex/Doclet is installed! Great!"
	echo ""
else
	echo "DocFlex/Doclet doesn't seem to be installed in your system in:java-classes folder"
	echo "This is required for creating the java documentation"
	echo "you can download it from: http://www.filigris.com/downloads/"
	
	sleep 4;
	open http://www.filigris.com/downloads
	exit;
fi

javadoc -docletpath ./docflex-doclet*/lib/docflex-doclet.jar -doclet com.docflex.javadoc.Doclet -template ./docflex-doclet*/templates/javadoc/FramedDoc.tpl -format HTML -nodialog -classpath "/Applications/Max6/Cycling '74/java/lib/jitter.jar:/Applications/Max6/Cycling '74/java/lib/jode-1.1.2-pre-embedded.jar:/Applications/Max6/Cycling '74/java/lib/max.jar:/Applications/Max6/Cycling '74/java/classes/:${PWD}" -d ejies-javadoc ej


#javadoc -classpath "/Applications/MaxMSP 4.6/Cycling '74/java/lib/jitter.jar:/Applications/MaxMSP 4.6/Cycling '74/java/lib/jode-1.1.2-pre-embedded.jar:/Applications/MaxMSP 4.6/Cycling '74/java/lib/max.jar:/Applications/MaxMSP 4.6/Cycling '74/java/classes/:${PWD}" -d ej-javadoc ej
