#!/bin/sh
set -e
cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

DESTINATION_PATH=$HOME"/Library/Containers/com.tencent.qq/Data/Library/Application Support/QQ"
SOURCE_PATH=$ROOT_PATH"/UserData/QQUser"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"