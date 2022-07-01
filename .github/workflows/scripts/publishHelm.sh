#!/usr/bin/env bash
set -e
helm push $(ls s3proxy-*.tgz) oci://ghcr.io/$GITHUB_REPOSITORY/charts