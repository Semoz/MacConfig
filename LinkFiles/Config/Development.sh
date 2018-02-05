#!/bin/sh
set -e
cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)
info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}
success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}
fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
}

link_data_path(){
    SOUR="$1"
    DEST="$2"

    if [ -n "$SOUR" ] ;
        then
            if [ -n "$DEST" ] ;
                then
                    rm -rf "$DEST"
                    mkdir -p "$DEST"
                    rm -rf "$DEST"
                    ln -s -f "$SOUR" "$DEST"
                    success "$DEST""\t-->\t""$SOUR"
                else
                    fail "Destination Path is NULL - Use As link_data_path \"Source\" \"Destination\""
                    exit
            fi
        else
            fail "Source Path is NULL - Use As link_data_path \"Source\" \"Destination\""
            exit
    fi
}

info "> Link Development Files.."
# Link Development File To Documents
DESTINATION_PATH=$HOME"/Documents/Development"
SOURCE_PATH=$ROOT_PATH"/Development"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link Android SDK File
DESTINATION_PATH=$HOME"/Library/Android/sdk"
SOURCE_PATH=$ROOT_PATH"/Development/IDE/Android/sdk"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"