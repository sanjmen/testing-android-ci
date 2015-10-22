#!/bin/bash

if [[ $TRAVIS_BRANCH == 'submit-apk' ]]; then
    ./gradlew app:crashlyticsUploadDistributionDebug;
fi
