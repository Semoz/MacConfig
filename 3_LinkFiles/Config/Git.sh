#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link credentials Config Files.."
DESTINATION_PATH=$HOME"/.git-credentials"
SOURCE_PATH=$HOME"/_AppConfig/Application/Git/AppData/credentials"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"