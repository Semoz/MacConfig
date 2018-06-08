#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link Transmit Config Files.."
DESTINATION_PATH=$HOME"/Library/Application Support/Transmit"
SOURCE_PATH=$HOME"/_AppConfig/Application/Transmit/AppConfig"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"