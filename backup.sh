#!/bin/sh

# Copy settings from different sources


# Copy zsh config
cp ~/.zshrc ./zsh/

# Copy Neovim configs 
cp -r ~/.config/nvim/* ./nvim/
