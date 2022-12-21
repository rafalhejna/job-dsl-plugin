#!/bin/bash

# ./gradlew build

plugin_version=$(sed -n '1,1 s/version\=//' gradle.properties)
cat gradle.properties
echo "$plugin_version"

echo "VERSION=${plugin_version}" >> $GITHUB_OUTPUT