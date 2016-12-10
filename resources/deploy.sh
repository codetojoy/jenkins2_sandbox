#!/bin/bash

ENV=$1
BUILD_NUMBER=$2 

echo "------------------------"
echo "deploying war (build # $BUILD_NUMBER) to $ENV"
echo "------------------------"

if [ "$ENV" == "DEV" ]; then
    curl --user admin:devdevdev 'http://192.168.99.100:5555/manager/text/stop?path=/greeting'
    curl --user admin:devdevdev 'http://192.168.99.100:5555/manager/text/undeploy?path=/greeting'
    curl --user admin:devdevdev 'http://192.168.99.100:5555/manager/text/deploy?path=/greeting&war=file:/data/greeting.war'
fi 
