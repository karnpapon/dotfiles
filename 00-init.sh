#!/usr/bin/env bash

source "utilities.sh"

# Link configurations
for config in nvim
do
  link_config $config
done


# Link .tmux.conf
# link_file "tmux/tmux.conf" ~/.tmux.conf
# link_file "tmux/tmuxline.tmux.conf" ~/.tmuxline.tmux.conf