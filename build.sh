#!/bin/bash

# ./gradlew build

plugin_version=$(sed 's/version\=//' gradle.properties | head -n 1)
sed 's/version\=//' gradle.properties
echo '-------------------'
sed 's/version\=//' gradle.properties | head -n 1
echo '-------------------'
sed -n '1,1 s/version\=//' gradle.properties
echo '-------------------'
cat gradle.properties
echo '-------------------'
echo "|$plugin_version|"

echo "VERSION=${plugin_version}" >> $GITHUB_OUTPUT