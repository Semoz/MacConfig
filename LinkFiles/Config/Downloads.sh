#!/bin/sh
set -e
cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

DESTINATION_PATH=$HOME"/Downloads/Baidu"
SOURCE_PATH=$ROOT_PATH"/FileData/Download/Baidu"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

DESTINATION_PATH=$HOME"/Downloads/Opera"
SOURCE_PATH=$ROOT_PATH"/FileData/Download/Opera"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

DESTINATION_PATH=$HOME"/Downloads/PP 下载"
SOURCE_PATH=$ROOT_PATH"/FileData/Download/PPHelper"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

DESTINATION_PATH=$HOME"/Downloads/QQ"
SOURCE_PATH=$ROOT_PATH"/FileData/Download/QQ"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

DESTINATION_PATH=$HOME"/Downloads/Thunder"
SOURCE_PATH=$ROOT_PATH"/FileData/Download/Thunder"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"