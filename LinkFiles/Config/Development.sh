#!/bin/sh
set -e
cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

DESTINATION_PATH=$HOME"/Documents/Development"
SOURCE_PATH=$ROOT_PATH"/Development"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

DESTINATION_PATH=$HOME"/Library/Android/sdk"
SOURCE_PATH=$ROOT_PATH"/Development/IDE/Android/sdk"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"