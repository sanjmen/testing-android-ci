#!/bin/bash

set -ev
if [[ $TRAVIS_BRANCH == 'master' ]]; then
    git log --oneline --no-merges -n10 --pretty=format:%s > /tmp/release-notes
    ./gradlew app:crashlyticsUploadDistributionDebug;
fi
