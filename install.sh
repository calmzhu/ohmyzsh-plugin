#!/usr/bin/env bash
# vim: tabstop=4 expandtab shiftwidth=4 softtabstop=4
#
#

function error {
    local _message=$1
    echo "\e033[31m$_message\e033[0m"
    exit 1
}

export DOC_URL="https://github.com/calmzhu/ohmyzsh-plugin-bookmark/tree/main?tab=readme-ov-file#install"

which sed>/dev/null || error "Cannot found sed in '$PATH';see $DOC_URL"
which awk>/dev/null || error "Cannot found awk in '$PATH';see $DOC_URL"

INSTALL_DIR="$ZSH_CUSTOM/plugins"
[[ -d $INSTALL_DIR ]] || error "Error: Cannot found '$ZSH_CUSTOM/PLUGIN';see $DOC_URL"
