#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

sudo -v

info "> Link Driver Files.."
DESTINATION_PATH="/Library/Audio/Plug-Ins/HAL/_SoundSiphon.driver"
SOURCE_PATH=$HOME"/_AppConfig/Application/SoundSiphon/AppConfig/_SoundSiphon.driver"
sudo link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link Driver Files.."
DESTINATION_PATH="/Library/LaunchAgents/com.staticz.soundsiphon.agent.plist"
SOURCE_PATH=$HOME"/_AppConfig/Application/SoundSiphon/AppConfig/com.staticz.soundsiphon.playeragent.plist"
sudo link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link Driver Files.."
DESTINATION_PATH="/Library/LaunchAgents/com.staticz.soundsiphon.inputagent.plist"
SOURCE_PATH=$HOME"/_AppConfig/Application/SoundSiphon/AppConfig/com.staticz.soundsiphon.inputagent.plist"
sudo link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link Driver Files.."
DESTINATION_PATH="/Library/LaunchDaemons/com.staticz.soundsiphon.bridgedaemon.plist"
SOURCE_PATH=$HOME"/_AppConfig/Application/SoundSiphon/AppConfig/com.staticz.soundsiphon.bridgedaemon.plist"
sudo link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"





