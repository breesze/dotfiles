#! /bin/sh

# Make sure u r in the path where this script is 
path=`pwd`
# X
ln -siv $path/X/Xresources ~/.Xresources
ln -siv $path/X/xinitrc ~/.xinitrc
ln -siv $path/X/redshift.conf ~/.config/redshift.conf
ln -siv $path/X/rc.conf ~/.config/ranger/rc.conf
# aria2
ln -siv $path/aria2/aria2.conf ~/.aria2/aria2.conf
ln -siv $path/aria2/delete.aria2.sh ~/.aria2/delete.aria2.sh
ln -siv $path/aria2/delete.sh ~/.aria2/delete.sh
ln -siv $path/aria2/dht.dat ~/.aria2/dht.dat
ln -siv $path/aria2/dht6.dat ~/.aria2/dht6.dat
# fontconfig(DejavVu, Noto Sans CJK)
ln -siv $path/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf
# i3-gaps, i3status
ln -siv $path/i3status/config ~/.config/i3status/config
ln -siv $path/i3status/net-speed.sh ~/.config/i3status/net-speed.sh
ln -siv $path/i3wm/config ~/.config/i3/config
# mpd, ncmpcpp
ln -siv $path/mpd-ncmpcpp/bindings ~/.ncmpcpp/bindings
ln -siv $path/mpd-ncmpcpp/config ~/.ncmpcpp/config
ln -siv $path/mpd-ncmpcpp/mpd.conf ~/.config/mpd/mpd.conf
# termite
ln -siv $path/termite/config ~/.config/termite/config
# tmux
ln -siv $path/tmux/tmux.conf ~/.tmux.conf
# vim
ln -siv $path/vim/vimrc ~/.vimrc
ln -siv $path/vim/coc-settings.json ~/.vim/coc-settings.json
ln -siv $path/vim/keymap.vim ~/.vim/vim/keymap.vim
ln -siv $path/vim/plugin.vim ~/.vim/vim/plugin.vim
# zsh
ln -siv $path/zsh/zshrc ~/.zshrc
ln -siv $path/zsh/LESS_TERMCAP ~/.LESS_TERMCAP 
ln -siv $path/zsh/zpreztorc ~/.zpreztorc
ln -siv $path/zsh/lgfs.prompt.sh ~/.lgfs.prompt.sh
ln -siv $path/zsh/fish.prompt.sh ~/.fish.prompt.sh
ln -siv $path/zsh/alias.sh ~/.alias.sh
