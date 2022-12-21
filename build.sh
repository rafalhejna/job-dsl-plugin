#!/bin/bash

./gradlew build

plugin_version=$(sed 's/version\=//' gradle.properties | head -n 1)

echo "VERSION=${plugin_version}" >> $GITHUB_OUTPUT