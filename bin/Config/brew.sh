#!/bin/sh
set -e
source message
info ""
info "-------------------------------------------------------------------------"
info ""
info "> Installing Brew.."
info ""
if test ! $(which brew)
	then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	else
		fail "brew already installed"
fi