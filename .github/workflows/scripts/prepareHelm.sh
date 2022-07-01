#!/usr/bin/env bash
#
yq -i ".version = \"${1}\" | .appVersion style=\"double\" | .appVersion = \"${1}\"" charts/s3proxy/Chart.yaml
helm package charts/s3proxy