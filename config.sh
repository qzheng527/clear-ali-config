#! /usr/bin/env bash
# Copyright (c) 2018 Intel Corporation
#
# SPDX-License-Identifier: Apache-2.0

DSTREAM_NAME="clear-ali" # Name for this Downstream of Clear Linux

#CLR_PUBLIC_DL_URL="http://linux-ftp.sh.intel.com/pub/mirrors/clearlinux"
# Infrastructure config
#DSTREAM_DL_URL="http://10.239.85.65:8000/update/" # URL that will be used to host this Downstream artifacts (update, releases etc)

KOJI_TAG="" # Koji Tag to be used by this Downstream
KOJI_URL="" # Kojihub URL
KOJI_TOPURL="" # Koji Top url (kojifiles)
BUNDLES_REPO="" # Git repository Hosting the bundles definitions for this Downstream

PUBLISHING_HOST="" # The hostname of the server to which Downstream artifacts will be published
PUBLISHING_ROOT="/srv/pub" # The directory on the server where Downstream artifacts will be published

# Workspace config
#BUILD_DIR="/srv/work/${NAMESPACE:-${DSTREAM_NAME}}" # Folder inside the Builder that should be used to run the release process
#STAGING_DIR="/srv/pub/${NAMESPACE:-${DSTREAM_NAME}}" # Folder inside the Builder that should be used to stage the produced artifacts

BUILD_DIR="$HOME/${DSTREAM_NAME}/build"
WORK_DIR="$HOME/${DSTREAM_NAME}/work"
STAGING_DIR="$HOME/${DSTREAM_NAME}/release"

#CLR_LATEST=27000

CLR_BUNDLES="os-core os-core-update kernel-native bootloader" 


# You can export custom environment variables (like proxy) bellow
