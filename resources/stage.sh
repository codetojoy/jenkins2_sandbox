#!/bin/bash

ENV=$1
BUILD_NUMBER=$2
SRC_DIR=$3
DEST_ROOT=$4

DEST_DIR=${DEST_ROOT}/${ENV}/${BUILD_NUMBER}

echo "------------------------"
echo "staging build # $BUILD_NUMBER for $ENV"
echo "------------------------"

mkdir -p $DEST_DIR
cp $SRC_DIR/greeting.war $DEST_DIR

