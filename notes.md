#Bourne Shell Script.
`chmod +x file.sh` = make executable file ( optional ).
`bash filename.sh` = run .sh without executable file.


#Brewfile.
`$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` = install brew.
`brew bundle` = run Brewfile

synthax `brew "package-name"` use in `brew bunder` cli
to install individually use `brew install package-name`


#nvim
` :PlugInstall ` = install plugins.

#zsh
set config by `nvim ~/.zshrc`

#tmux 
`prefix + I`, where prefix is `ctrl + a` ( for this keybinding) = install plugin
powerline font should be installed, and change via terminal>preference>font

#scripts.
`tmux source-file ~/.tmux.conf` = reload tmux config.

#vim-plug.
installing YCM (YouCompleteMe), YCM is too big so manually install (instead of using `vim-plug`) is recommended.
```
cd ~/.vim/bundle

git clone https://github.com/Valloric/YouCompleteMe

cd ~/.vim/bundle/YouCompleteMe

git submodule update --init --recursive

./install.py --rust-completer
```

