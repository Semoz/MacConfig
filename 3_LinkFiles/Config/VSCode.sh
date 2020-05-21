#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link vscode Config Files.."
DESTINATION_PATH=$HOME"/.vscode"
SOURCE_PATH=$HOME"/_AppConfig/Application/VSCode/AppConfig"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"