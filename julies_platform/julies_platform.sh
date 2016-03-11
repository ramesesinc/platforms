#!/bin/sh
JAVA_HOME=~/apps/jdk1.6.0_45
JAVA_OPTS="-Xms512m -Xmx2048m -Duser.timezone=Asia/Manila"

if [ "x$JAVA_HOME" = "x" ]; then 
   JAVA="java"
else
   JAVA="$JAVA_HOME/bin/java"
fi 

echo "==========================================="
echo "  Platform    : Osiris3 Client Platform    "
echo "  Application : ETRACS Version 2.5         "
echo "                                           "
echo "  JAVA_HOME   : $JAVA_HOME                 "
echo "  JAVA_OPTS   : $JAVA_OPTS                 "
echo "  JAVA        : $JAVA                      "
echo "==========================================="

$JAVA $JAVA_OPTS -cp lib/*:. com.rameses.osiris3.platform.OSBootStrap

