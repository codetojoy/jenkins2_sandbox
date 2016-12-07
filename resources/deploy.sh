#!/bin/bash

ENV=$1
BUILD_NUMBER=$2 

SHARE_ROOT=/share
WAR_FILE=${SHARE_ROOT}/${ENV}/${BUILD_NUMBER}/greeting.war

echo "------------------------"
echo "deploying war (build # $BUILD_NUMBER) to $ENV"
echo "------------------------"

if [ "$ENV" == "DEV" ]; then
    # curl --user admin:devdevdev 'http://192.168.99.100:5555/manager/text/stop?path=/greeting'
    # curl --user admin:devdevdev 'http://192.168.99.100:5555/manager/text/undeploy?path=/greeting'
    curl --user admin:devdevdev 'http://192.168.99.100:5555/manager/text/deploy?path=/greeting&war=file:${WAR_FILE}'
fi 
