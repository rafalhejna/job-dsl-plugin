#!/bin/bash

echo "Pushing job-dsl plugin version |$1| to Artifactory"

curl -u "$ARTIFACTORY_USER":"$ARTIFACTORY_SECRET" \
     -X PUT https://vonagecc.jfrog.io/artifactory/maven-jenkins-plugins/job-dsl-plugin/"$1"/job-dsl.hpi \
     -T ./job-dsl.hpi