#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link Pictures Files.."
# Link Wallpaper File
DESTINATION_PATH=$HOME"/Pictures/Wallpaper"
SOURCE_PATH=$HOME"/_MacData/FileData/Pictures/Wallpaper"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link Screenshots File
DESTINATION_PATH=$HOME"/Pictures/Screenshots"
SOURCE_PATH=$HOME"/_MacData/FileData/Pictures/Screenshots"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link Others File
DESTINATION_PATH=$HOME"/Pictures/Others"
SOURCE_PATH=$HOME"/_MacData/FileData/Pictures/Others"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"