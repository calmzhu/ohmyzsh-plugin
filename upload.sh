#!/usr/bin/env bash
# vim: tabstop=4 expandtab shiftwidth=4 softtabstop=4
#
#

export upload_url="https://uploads.github.com/repos/calmzhu/ohmyzsh-plugin-bookmark/releases/135248922/assets"

export GH_RELEASE_VERSION="ad"

curl -L  -X POST \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    -H "Content-Type: application/octet-stream" \
    "$upload_url?name=bookmark-v${GH_RELEASE_VERSION}.zip" \
     --data-binary "@bookmark-v${GH_RELEASE_VERSION}.zip"


