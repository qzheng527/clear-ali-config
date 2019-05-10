#!/usr/bin/env bash

set -e

. config.sh

sudo docker run -p 8000:80 -v ${STAGING_DIR}:/usr/share/nginx/html -d clearlinux/nginx
