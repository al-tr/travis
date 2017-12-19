#!/bin/bash

./gradlew deploy 

./gradlew testFail

if [ "$?" = "0" ]; 
    then echo test successful, deploying to prod; ./gradlew deploy; 
    else echo test failed, undeploying; ./gradlew undeploy; exit 1; 
fi;
