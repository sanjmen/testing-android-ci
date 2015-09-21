#!/bin/bash

if [[ $(git branch | sed -n -e 's/^\* \(.*\)/\1/p') == 'master' ]]; then
    ./gradlew app:crashlyticsUploadDistributionDebug;
fi
