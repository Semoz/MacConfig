#!/bin/sh
set -e
cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

DESTINATION_PATH=$HOME"/Documents/Documents"
SOURCE_PATH=$ROOT_PATH"/FileData/Documents"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

DESTINATION_PATH=$HOME"/Documents/MuMu共享文件夹"
SOURCE_PATH=$ROOT_PATH"/FileData/MuMuShare"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

DESTINATION_PATH=$HOME"/Documents/Volumes"
SOURCE_PATH="/Volumes"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"