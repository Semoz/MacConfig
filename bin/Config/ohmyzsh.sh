#!/bin/sh
set -e
source message
info ""
info "-------------------------------------------------------------------------"
info "> Installing oh-my-zsh.."
info ""
if [ ! -d ~/.oh-my-zsh ]
  then
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
    success "oh-my-zsh installed success"
	else
  	fail "oh-my-zsh already installed"
fi