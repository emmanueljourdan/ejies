
#!/bin/bash

cd java-classes

CLASSPATH="/Applications/Max.app/Contents/Resources/C74/packages/max-mxj/java-classes/lib/max.jar:/Applications/Max.app/Contents/Resources/C74/packages/max-mxj/java-classes/lib/jitter.jar:$(pwd)"

find . -iname "*.java" -exec javac -classpath $CLASSPATH --release 7 "{}" \;                                                      