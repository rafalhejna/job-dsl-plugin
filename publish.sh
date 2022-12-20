#!/bin/bash

plugin_version=$(sed -n '1,1 s/version\=//' gradle.properties)

curl -u "$ARTIFACTORY_USER":"$ARTIFACTORY_SECRET" \
     -X PUT https://vonagecc.jfrog.io/artifactory/maven-jenkins-plugins/job-dsl-plugin/"$plugin_version"/job-dsl.hpi \
     -T ./job-dsl.hpi