#!/usr/bin/env bash

# Initialize vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install the plugins
nvim --headless +PlugInstall +qa

# Build CoC ( Conquer of Completion --- intellisense in vim )
nvim --headless "+call coc#util#build()" +qa

# Install neovim dependencies (eg. for UtilSnip)
pip3 install neovim
# yarn global add vim-node-rpc