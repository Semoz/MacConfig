#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link SSH Files.."
DESTINATION_PATH=$HOME"/.ssh"
SOURCE_PATH=$HOME"/_AppConfig/SSH/AppConfig"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"