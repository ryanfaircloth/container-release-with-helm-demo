#!/usr/bin/env bash
set -e
helm push $(ls ${GITHUB_REPOSITORY#*/}-*.tgz) oci://ghcr.io/$GITHUB_REPOSITORY/charts