#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link QQ User Chat Files.."
DESTINATION_PATH=$HOME"/Library/Containers/com.tencent.qq/Data/Library/Application Support/QQ"
SOURCE_PATH=$HOME"/_AppData/QQ/QQUser"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"