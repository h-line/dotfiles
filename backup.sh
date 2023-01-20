#!/bin/sh

# Copy settings from different sources


# Copy zsh config
cp ~/.zshrc ./zsh/

# Copy Neovim configs 
cp ~/.config/nvim/init.lua ./nvim/
cp -r ~/.config/nvim/lua/* ./nvim/lua/
