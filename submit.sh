#!/bin/bash
echo $(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
if [[ $(git branch | sed -n -e 's/^\* \(.*\)/\1/p') == 'master' ]]; then
    ./gradlew app:crashlyticsUploadDistributionDebug;
fi
