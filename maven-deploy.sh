#!/bin/bash

version="v2.4.0-rc-20210111"
folder="jar/"

mvn deploy:deploy-file  -Durl=ftp://ftp.cluster013.ovh.net/maven/releases -DrepositoryId=jzy3d-ftp -DgroupId=org.jogamp.gluegen -DartifactId=gluegen -Dversion=$version -Dfile=${folder}gluegen.jar -Dpackaging=jar
