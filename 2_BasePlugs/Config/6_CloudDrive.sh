#!/bin/sh -e

cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

source message

info ""
info "-------------------------------------------------------------------------"
info ""
info "Link 3_FileData To {HOME}/_FileData"
info ""
info "Current Directory is:\t"$ROOT_PATH
info ""

#链接AppConfig目录
DESTINATION_PATH=$HOME"/_AppConfig"
SOURCE_PATH=$ROOT_PATH"/3_File_Data/CloudDrive/_Configuration"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接Dropbox目录
DESTINATION_PATH=$HOME"/Dropbox"
SOURCE_PATH=$ROOT_PATH"/3_File_Data/CloudDrive"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"