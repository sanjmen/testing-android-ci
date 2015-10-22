#!/usr/bin/env bash

./gradlew connectedCheck
if [ $? -ne 0 ]; then exit 1; fi
./gradlew build;
if [ $? -ne 0 ]; then exit 1; fi
