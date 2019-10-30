#!/bin/sh -e

cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

source message

info ""
info "-------------------------------------------------------------------------"
info ""
info "Link VirtualMachine To HOME.."
info ""
info "Current Directory:\t"$ROOT_PATH
info ""

#链接VirtualMachine目录
DESTINATION_PATH=$HOME"/_VirtualMachine"
SOURCE_PATH=$ROOT_PATH"/5_Virtual_Machine"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"