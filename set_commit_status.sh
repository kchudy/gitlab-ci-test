#!/bin/bash

BUILD_STATE=$1
DESCRIPTION=$2

curl -X POST \
    https://api.github.com/repos/kchudy/gitlab-ci-test/statuses/${CI_COMMIT_SHA} \
    -H "Authorization: token ${GITHUB_TOKEN}" \
    -d '{"state": "'${BUILD_STATE}'", "target_url": "http://localhost/root/gitlab-ci-test/pipelines/'${CI_PIPELINE_ID}'", "description": "'${DESCRIPTION}'", "context": "continuous-integration/gitlab"}'
