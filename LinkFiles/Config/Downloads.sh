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

info "> Link Downloads Files.."
# Link Baidu Download
DESTINATION_PATH=$HOME"/Downloads/Baidu"
SOURCE_PATH=$ROOT_PATH"/FileData/Download/Baidu"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link Opera Download
DESTINATION_PATH=$HOME"/Downloads/Opera"
SOURCE_PATH=$ROOT_PATH"/FileData/Download/Opera"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link PPHelper Download
DESTINATION_PATH=$HOME"/Downloads/PP 下载"
SOURCE_PATH=$ROOT_PATH"/FileData/Download/PPHelper"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link QQ Download
DESTINATION_PATH=$HOME"/Downloads/QQ"
SOURCE_PATH=$ROOT_PATH"/FileData/Download/QQ"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link Thunder Download
DESTINATION_PATH=$HOME"/Downloads/Thunder"
SOURCE_PATH=$ROOT_PATH"/FileData/Download/Thunder"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"