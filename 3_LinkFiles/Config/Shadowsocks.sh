#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link ShadowsocksX-NG Config Files.."
DESTINATION_PATH=$HOME"/.ShadowsocksX-NG"
SOURCE_PATH=$HOME"/_AppConfig/Application/Shadowsocks/AppConfig"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"