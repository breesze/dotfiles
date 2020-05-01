#! /bin/sh

# Make sure u r in the path where this script is 
path=`pwd`
# X
ln -sfv $path/X/Xresources ~/.Xresources
ln -sfv $path/X/xinitrc ~/.xinitrc
# aria2
ln -sfv $path/aria2/aria2.conf ~/.aria2/aria2.conf
ln -sfv $path/aria2/delete.aria2.sh ~/.aria2/delete.aria2.sh
ln -sfv $path/aria2/delete.sh ~/.aria2/delete.sh
ln -sfv $path/aria2/dht.dat ~/.aria2/dht.dat
ln -sfv $path/aria2/dht6.dat ~/.aria2/dht6.dat
# fontconfig(DejavVu, Noto Sans CJK)
ln -sfv $path/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf
# i3-gaps, i3status
ln -sfv $path/i3status/config ~/.config/i3status/config
ln -sfv $path/i3status/net-speed.sh ~/.config/i3status/net-speed.sh
ln -sfv $path/i3wm/config ~/.config/i3/config
# mpd, ncmpcpp
ln -sfv $path/mpd-ncmpcpp/bingings ~/.ncmpcpp/bindings
ln -sfv $path/mpd-ncmpcpp/config ~/.ncmpcpp/config
ln -sfv $path/mpd-ncmpcpp/mpd.conf ~/.config/mpd/mpd.conf
# termite
ln -sfv $path/termite/config ~/.config/termite/config
# tmux
ln -sfv $path/tmux/tmux.conf ~/.tmux.conf
# vim
ln -sfv $path/vim/keymap.vim ~/.vim/vim/keymap.vim
ln -sfv $path/vim/plugin.vim ~/.vim/vim/plugin.vim
ln -sfv $path/vim/vimrc ~/.vimrc
# zsh
ln -sfv $path/zsh/zshrc ~/.zshrc
ln -sfv $path/zsh/LESS_TERMCAP ~/.LESS_TERMCAP 
ln -sfv $path/zsh/zpreztorc ~/.zpreztorc
ln -sfv $path/zsh/lgfs.prompt.sh ~/.lgfs.prompt.sh
ln -sfv $path/zsh/fish.prompt.sh ~/.fish.prompt.sh
ln -sfv $path/zsh/alias.sh ~/.alias.sh
