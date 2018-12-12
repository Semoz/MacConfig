#!/bin/sh -e

cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

source message

info ""
info "-------------------------------------------------------------------------"
info ""
info "Link Base File To HOME.."
info ""
info "Current Directory:\t"$ROOT_PATH
info ""

#链接Dropbox目录
DESTINATION_PATH=$HOME"/Dropbox"
SOURCE_PATH=$ROOT_PATH"/FileData/CloudDrive"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接AppData目录
DESTINATION_PATH=$HOME"/_AppData"
SOURCE_PATH=$ROOT_PATH"/FileData/AppData"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接AppConfig目录
DESTINATION_PATH=$HOME"/_AppConfig"
SOURCE_PATH=$ROOT_PATH"/FileData/CloudDrive/_Configuration"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接MacData目录
DESTINATION_PATH=$HOME"/_MacData"
SOURCE_PATH=$ROOT_PATH
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接MacConfig目录
DESTINATION_PATH=$HOME"/_MacConfig"
SOURCE_PATH=$ROOT_PATH"/MacConfig"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"