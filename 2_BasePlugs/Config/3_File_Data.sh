#!/bin/sh -e

cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

source message

info ""
info "-------------------------------------------------------------------------"
info ""
info "Link File_Data To HOME.."
info ""
info "Current Directory:\t"$ROOT_PATH
info ""

#链接Dropbox目录
DESTINATION_PATH=$HOME"/Dropbox"
SOURCE_PATH=$ROOT_PATH"/3_File_Data/CloudDrive"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接AppConfig目录
DESTINATION_PATH=$HOME"/_AppConfig"
SOURCE_PATH=$ROOT_PATH"/3_File_Data/CloudDrive/_Configuration"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接AppData目录
DESTINATION_PATH=$HOME"/_AppData"
SOURCE_PATH=$ROOT_PATH"/3_File_Data/AppData"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"


#链接FileData目录
DESTINATION_PATH=$HOME"/_FileData"
SOURCE_PATH=$ROOT_PATH"/3_File_Data"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"
