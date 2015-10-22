#!/bin/bash

if [[ $TRAVIS_BRANCH == 'master' ]]; then
    ./gradlew app:crashlyticsUploadDistributionDebug;
fi
