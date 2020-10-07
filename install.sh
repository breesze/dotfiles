#! /bin/sh

path=`pwd`

# alacritty
ln -siv $path/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# aria2
# ln -siv $path/aria2/aria2.conf ~/.aria2/aria2.conf
# ln -siv $path/aria2/delete.aria2.sh ~/.aria2/delete.aria2.sh
# ln -siv $path/aria2/delete.sh ~/.aria2/delete.sh
# ln -siv $path/aria2/dht.dat ~/.aria2/dht.dat
# ln -siv $path/aria2/dht6.dat ~/.aria2/dht6.dat

# dwm
ln -siv $path/dwm/startdwm.sh ~/.startdwm.sh

# feh
ln -siv $path/wallpapers/fehbg ~/.fehbg

# fontconfig
ln -siv $path/fontconfig/fonts.conf ~/.config/fonts.conf

# i3-gaps, i3status
# ln -siv $path/i3status/config ~/.config/i3status/config
# ln -siv $path/i3status/net-speed.sh ~/.config/i3status/net-speed.sh
# ln -siv $path/i3wm/config ~/.config/i3/config

# keynav
ln -siv $path/keynav/keynavrc ~/.config/keynav/keynavrc

# mpd ncmpcpp
ln -siv $path/mpd-ncmpcpp/bindings ~/.config/ncmpcpp/bindings
ln -siv $path/mpd-ncmpcpp/config ~/.config/ncmpcpp/config
ln -siv $path/mpd-ncmpcpp/mpd.conf ~/.config/mpd/mpd.conf

# picom(compton)
ln -siv $path/picom/picom.conf ~/.config/picom/picom.conf

# ranger
ln -siv $path/ranger/rc.conf ~/.config/ranger/rc.conf

# redshift
ln -siv $path/redshift/redshift.conf ~/.config/redshift.conf

# termite
ln -siv $path/termite/config ~/.config/termite/config

# tmux
ln -siv $path/tmux/tmux.conf ~/.tmux.conf

# vim
ln -siv $path/vim/clang-format ~/.clang-format
ln -siv $path/vim/coc-settings.json ~/.config/nvim/coc-settings.json
ln -siv $path/vim/coc-settings.json ~/.vim/coc-settings.json
ln -siv $path/vim/init.vim ~/.config/nvim/init.vim
ln -siv $path/vim/keymap.vim ~/.vim/vim/keymap.vim
ln -siv $path/vim/plugin.vim ~/.vim/vim/plugin.vim
ln -siv $path/vim/vimrc ~/.vimrc

# xorg
ln -siv $path/xorg/Xresources ~/.Xresources
ln -siv $path/xorg/xinitrc ~/.xinitrc

# zathura
ln -siv $path/zathura/zathurarc ~/.config/zathura/zathurarc

# zsh
ln -siv $path/zsh/LESS_TERMCAP ~/.LESS_TERMCAP 
ln -siv $path/zsh/alias.sh ~/.alias.sh
ln -siv $path/zsh/fish.prompt.sh ~/.fish.prompt.sh
ln -siv $path/zsh/lgfs.prompt.sh ~/.lgfs.prompt.sh
ln -siv $path/zsh/zpreztorc ~/.zpreztorc
ln -siv $path/zsh/zshrc ~/.zshrc
