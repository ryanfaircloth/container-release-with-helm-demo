#!/usr/bin/env bash
set -ev
helm push $(ls ${GITHUB_REPOSITORY#*/}*.tgz) oci://ghcr.io/$GITHUB_REPOSITORY/charts
gh release upload $1 $(ls ${GITHUB_REPOSITORY#*/}*.tgz)