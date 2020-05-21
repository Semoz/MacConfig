#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link KeePassXC Config Files.."
DESTINATION_PATH=$HOME"/Library/Application Support/keepassxc/keepassxc.ini"
SOURCE_PATH=$HOME"/_AppConfig/Application/KeePassXC/AppConfig/keepassxc.ini"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"