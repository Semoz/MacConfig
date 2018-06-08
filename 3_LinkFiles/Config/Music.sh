#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link Other Music Files.."
# Link Baidu Download
DESTINATION_PATH=$HOME"/Music/其他音乐"
SOURCE_PATH=$HOME"/_MacData/FileData/Music/OtherMusic"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link QQMusic Files.."
# Link Baidu Download
DESTINATION_PATH=$HOME"/Music/QQ音乐"
SOURCE_PATH=$HOME"/_MacData/FileData/Music/QQMusic"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link Logic Music Files.."
# Link Baidu Download
DESTINATION_PATH=$HOME"/Music/Logic"
SOURCE_PATH=$HOME"/_MacData/FileData/Music/Logic"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"