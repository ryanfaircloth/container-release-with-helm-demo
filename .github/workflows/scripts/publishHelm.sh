#!/usr/bin/env bash
set -ev
helm push $(ls *.tgz) oci://ghcr.io/$GITHUB_REPOSITORY/charts