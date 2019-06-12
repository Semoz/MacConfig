#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link Other Music Files.."
# Link Baidu Download
DESTINATION_PATH=$HOME"/Music/其他音乐"
SOURCE_PATH=$HOME"/_FileData/Music/OtherMusic"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link QQMusic Files.."
# Link Baidu Download
DESTINATION_PATH=$HOME"/Music/QQ音乐"
SOURCE_PATH=$HOME"/_FileData/Music/QQMusic"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link Logic Music Files.."
# Link Baidu Download
DESTINATION_PATH=$HOME"/Music/Logic"
SOURCE_PATH=$HOME"/_FileData/Music/Logic"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link NeteaseMusic Music Files.."
# Link Baidu Download
DESTINATION_PATH=$HOME"/Music/网易云音乐"
SOURCE_PATH=$HOME"/_FileData/Music/NeteaseMusic"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link XiamiMusic Music Files.."
# Link Baidu Download
DESTINATION_PATH=$HOME"/Music/虾米音乐"
SOURCE_PATH=$HOME"/_FileData/Music/XiamiMusic"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link SoundEffect Music Files.."
# Link Baidu Download
DESTINATION_PATH=$HOME"/Music/音效&配乐"
SOURCE_PATH=$HOME"/_FileData/Music/SoundEffect"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"