#!/bin/bash

curl -X POST \
    https://api.github.com/repos/kchudy/gitlab-ci-test/statuses/${CI_COMMIT_SHA} \
    -H "Authorization: token ${GITHUB_TOKEN}" \
    -d '{"state": "success", "target_url": "http://localhost/root/gitlab-ci-test/pipelines/'${CI_PIPELINE_ID}'", "description": "The build succeeded!", "context": "continuous-integration/gitlab"}'
