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

#链接MacConfig目录
DESTINATION_PATH=$HOME"/_MacConfig"
SOURCE_PATH=$ROOT_PATH"/1_Configuration"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接MacData目录
DESTINATION_PATH=$HOME"/_MacData"
SOURCE_PATH=$ROOT_PATH
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接FileData目录
DESTINATION_PATH=$HOME"/_FileData"
SOURCE_PATH=$ROOT_PATH"/3_File_Data"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接VirtualMachine目录
DESTINATION_PATH=$HOME"/_VirtualMachine"
SOURCE_PATH=$ROOT_PATH"/5_Virtual_Machine"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接Development目录
DESTINATION_PATH=$HOME"/_Development"
SOURCE_PATH=$ROOT_PATH"/2_Development"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

#链接Software录
DESTINATION_PATH=$HOME"/_Software"
SOURCE_PATH=$ROOT_PATH"/4_Software"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"