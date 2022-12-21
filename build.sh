#!/bin/bash

# ./gradlew build

plugin_version=$(sed 's/version\=//' gradle.properties | head -n 1)

echo "${plugin_version}"

echo "VERSION=${plugin_version}" >> $GITHUB_OUTPUT