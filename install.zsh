
export ZSH_CUSTOM=$1

function error {
    local _message=$1
    echo -e "\033[31m$_message\033[0m"
    exit 1
}

[[ `basename $SHELL` -eq "zsh" ]] || error "Please run in zsh"

export DOC_URL="https://github.com/calmzhu/ohmyzsh-plugin-bookmark/tree/main?tab=readme-ov-file#install"
export VERSION=latest

which sed>/dev/null || error "Cannot found sed in '\$PATH';see $DOC_URL"

export INSTALL_DIR="$ZSH_CUSTOM/plugins"
[[ -d "$INSTALL_DIR" ]] || error "Error: Cannot found zsh plugin dir '\$ZSH_CUSTOM/plugins';\nsee $DOC_URL"

download_url=`curl -s https://api.github.com/repos/calmzhu/ohmyzsh-plugin-bookmark/releases/$VERSION | \
    grep "browser_download_url" | \
    grep -o "http.*\.zip"`
temp=`mktemp`
curl -L $download_url --output $temp
unzip $temp -d $INSTALL_DIR
rm -rf $temp
