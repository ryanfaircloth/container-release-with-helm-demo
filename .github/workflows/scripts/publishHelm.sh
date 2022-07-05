#!/usr/bin/env bash
set -ev
helm push $(ls ${GITHUB_REPOSITORY#*/}*.tgz) oci://ghcr.io/$GITHUB_REPOSITORY/charts
