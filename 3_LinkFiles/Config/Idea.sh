#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link jetbrains-agent.jar Config Files.."
DESTINATION_PATH=$HOME"/jetbrains-agent.jar"
SOURCE_PATH=$HOME"/_AppConfig/Application/Jetbrains/AppConfig/jetbrains-agent.jar"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"