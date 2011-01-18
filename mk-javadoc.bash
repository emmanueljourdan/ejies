#!/bin/bash

cd ejies-java

javadoc -docletpath ~/.javalib/docflex-doclet.jar -doclet com.docflex.javadoc.Doclet -template res:templates/FramedDoc.tpl -format HTML -nodialog -classpath "/Applications/Max5/Cycling '74/java/lib/jitter.jar:/Applications/Max5/Cycling '74/java/lib/jode-1.1.2-pre-embedded.jar:/Applications/Max5/Cycling '74/java/lib/max.jar:/Applications/Max5/Cycling '74/java/classes/:${PWD}" -d ejies-javadoc ej


#javadoc -classpath "/Applications/MaxMSP 4.6/Cycling '74/java/lib/jitter.jar:/Applications/MaxMSP 4.6/Cycling '74/java/lib/jode-1.1.2-pre-embedded.jar:/Applications/MaxMSP 4.6/Cycling '74/java/lib/max.jar:/Applications/MaxMSP 4.6/Cycling '74/java/classes/:${PWD}" -d ej-javadoc ej
