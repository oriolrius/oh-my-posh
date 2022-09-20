#!/bin/sh
set -e
set -o noglob

URL="https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64"
FILE="/usr/local/bin/oh-my-posh"
URL_THEME_FILE="https://raw.githubusercontent.com/oriolrius/oh-my-posh/master/cloud-native-azure.omp.json"

wget ${URL} -O ${FILE}
chmod u+x ${FILE}

cat <<EOF >> ~/.bashrc

eval "\$(oh-my-posh init bash --config ${URL_THEME_FILE})"

EOF