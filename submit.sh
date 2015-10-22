#!/bin/bash

if [[ $TRAVIS_BRANCH == 'master' ]]; then
    ./gradlew app:generateDebugSources;
    ./gradlew app:generateDebugAndroidTestSources;
    ./gradlew app:assembleDebug;
    ./gradlew app:crashlyticsUploadDistributionDebug;
fi
