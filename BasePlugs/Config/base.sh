#!/bin/sh
set -e
cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)
source message
info ""
info "-------------------------------------------------------------------------"
info ""
info "Link Base Path.."
info ""
info "Current Directory:\t"$ROOT_PATH
info ""
#链接Dropbox目录
DESTINATION_PATH=$HOME"/Dropbox"
SOURCE_PATH=$ROOT_PATH"/FileData/Dropbox"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"
#链接MacConfig目录
DESTINATION_PATH=$HOME"/MacConfig"
SOURCE_PATH=$ROOT_PATH"/MacConfig"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"