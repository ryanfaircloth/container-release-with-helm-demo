#!/usr/bin/env bash
#

yq -i ".version = \"${1}\" | .appVersion style=\"double\" | .appVersion = \"${1}\"" charts/${GITHUB_REPOSITORY#*/}/Chart.yaml
helm package charts/${GITHUB_REPOSITORY#*/}