#!/usr/bin/env bash

set -ev
./gradlew domain:test
if [ $? -ne 0 ]; then exit 1; fi
./gradlew data:test
if [ $? -ne 0 ]; then exit 1; fi