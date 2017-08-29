#!/usr/bin/env bash

# Run all dotfiles installers.

set -e

cd "$(dirname "$0")/.." # 定位到执行当前脚本的目录上级

sudo ln -s -f ~/Dropbox/ssh ~/.ssh