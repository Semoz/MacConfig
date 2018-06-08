#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link FCPX Motion Templates.."
DESTINATION_PATH=$HOME"/Movies/Motion Templates.localized"
SOURCE_PATH=$HOME"/_AppData/Final Cut Pro X/Motion Templates"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link FCPX Final Cut Backups.."
DESTINATION_PATH=$HOME"/Movies/Final Cut Backups.localized"
SOURCE_PATH=$HOME"/_AppData/Final Cut Pro X/Final Cut Backups"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"