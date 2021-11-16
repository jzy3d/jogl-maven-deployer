#!/bin/bash

version="v2.4.0-rc4"
folder="jar/"

# Remarks
# Repeated jars with android in the name
# Skiped iOS + android

mvn install:install-file -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt                          -Dversion=$version -Dfile=${folder}gluegen-rt.jar                          -Dpackaging=jar

mvn install:install-file -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt-natives-linux-aarch64    -Dversion=$version -Dfile=${folder}gluegen-rt-natives-linux-aarch64.jar    -Dpackaging=jar
mvn install:install-file -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt-natives-linux-amd64      -Dversion=$version -Dfile=${folder}gluegen-rt-natives-linux-amd64.jar      -Dpackaging=jar
mvn install:install-file -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt-natives-linux-armv6hf    -Dversion=$version -Dfile=${folder}gluegen-rt-natives-linux-armv6hf.jar    -Dpackaging=jar
mvn install:install-file -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt-natives-linux-i586       -Dversion=$version -Dfile=${folder}gluegen-rt-natives-linux-i586.jar       -Dpackaging=jar

mvn install:install-file -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt-natives-macosx-universal -Dversion=$version -Dfile=${folder}gluegen-rt-natives-macosx-universal.jar -Dpackaging=jar

mvn install:install-file -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt-natives-windows-amd64    -Dversion=$version -Dfile=${folder}gluegen-rt-natives-windows-amd64.jar    -Dpackaging=jar
mvn install:install-file -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt-natives-windows-i586     -Dversion=$version -Dfile=${folder}gluegen-rt-natives-windows-i586.jar     -Dpackaging=jar


# Skip mobile, noawt, android, iOS
mvn install:install-file -DgroupId=org.jogamp.jogl -DartifactId=jogl-all                               -Dversion=$version -Dfile=${folder}jogl-all.jar                           -Dpackaging=jar
mvn install:install-file -DgroupId=org.jogamp.jogl -DartifactId=jogl-all-natives-linux-aarch64         -Dversion=$version -Dfile=${folder}jogl-all-natives-linux-aarch64.jar     -Dpackaging=jar
mvn install:install-file -DgroupId=org.jogamp.jogl -DartifactId=jogl-all-natives-linux-amd64           -Dversion=$version -Dfile=${folder}jogl-all-natives-linux-amd64.jar       -Dpackaging=jar
mvn install:install-file -DgroupId=org.jogamp.jogl -DartifactId=jogl-all-natives-linux-armv6hf         -Dversion=$version -Dfile=${folder}jogl-all-natives-linux-armv6hf.jar     -Dpackaging=jar
mvn install:install-file -DgroupId=org.jogamp.jogl -DartifactId=jogl-all-natives-linux-i586            -Dversion=$version -Dfile=${folder}jogl-all-natives-linux-i586.jar        -Dpackaging=jar
mvn install:install-file -DgroupId=org.jogamp.jogl -DartifactId=jogl-all-natives-macosx-universal      -Dversion=$version -Dfile=${folder}jogl-all-natives-macosx-universal.jar  -Dpackaging=jar
mvn install:install-file -DgroupId=org.jogamp.jogl -DartifactId=jogl-all-natives-windows-amd64         -Dversion=$version -Dfile=${folder}jogl-all-natives-windows-amd64.jar     -Dpackaging=jar
mvn install:install-file -DgroupId=org.jogamp.jogl -DartifactId=jogl-all-natives-windows-i586          -Dversion=$version -Dfile=${folder}jogl-all-natives-windows-i586.jar      -Dpackaging=jar

#mvn install:install-file -DgroupId=org.jogamp.jogl -DartifactId=jogl-all-noawt                         -Dversion=$version -Dfile=${folder}jogl.all-noawt.jar                     -Dpackaging=jar
