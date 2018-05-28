#!/bin/sh
set -e
cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link Downloads Files.."
# Link Baidu Download
DESTINATION_PATH=$HOME"/Downloads/Baidu"
SOURCE_PATH=$HOME"/_MacData/FileData/Downloads/Baidu"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link Opera Download
DESTINATION_PATH=$HOME"/Downloads/Opera"
SOURCE_PATH=$HOME"/_MacData/FileData/Downloads/Opera"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link PPHelper Download
DESTINATION_PATH=$HOME"/Downloads/PP 下载"
SOURCE_PATH=$HOME"/_MacData/FileData/Downloads/PPHelper"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link QQ Download
DESTINATION_PATH=$HOME"/Downloads/QQ"
SOURCE_PATH=$HOME"/_MacData/FileData/Downloads/QQ"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link Thunder Download
DESTINATION_PATH=$HOME"/Downloads/Thunder"
SOURCE_PATH=$HOME"/_MacData/FileData/Downloads/Thunder"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"