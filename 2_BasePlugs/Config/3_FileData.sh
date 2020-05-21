#!/bin/sh -e

cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

source message

info ""
info "-------------------------------------------------------------------------"
info ""
info "Link 3_FileData To {HOME}/_FileData;Link 3_File_Data/AppData To {HOME}/_AppData;"
info ""
info "Current Directory is:\t"$ROOT_PATH
info ""

#链接FileData目录
DESTINATION_PATH=$HOME"/_FileData"
SOURCE_PATH=$ROOT_PATH"/3_File_Data"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接AppData目录
DESTINATION_PATH=$HOME"/_AppData"
SOURCE_PATH=$ROOT_PATH"/3_File_Data/AppData"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"