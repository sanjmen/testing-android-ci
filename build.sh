#!/usr/bin/env bash

./gradlew connectedCheck
if [ $? -ne 0 ]; then exit 1; fi
./gradlew app:generateDebugSources;
if [ $? -ne 0 ]; then exit 1; fi
./gradlew app:generateDebugAndroidTestSources;
if [ $? -ne 0 ]; then exit 1; fi
./gradlew app:assembleDebug;
if [ $? -ne 0 ]; then exit 1; fi
