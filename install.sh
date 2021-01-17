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

# bspwm
ln -siv $path/bspwm/bspwmrc ~/.config/bspwm/bspwmrc
ln -siv $path/bspwm/sxhkdrc ~/.config/sxhkd/sxhkdrc

# clang
ln -siv $path/clang/clang-format ~/.clang-format

# dwm
# ln -siv $path/dwm/startdwm ~/.startdwm
# ln -siv $path/dwmstatus/startdwmstatus ~/.startdwmstatus

# feh
ln -siv $path/pictures/fehbg ~/.fehbg

# fontconfig
ln -siv $path/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf/fontts.conf
ln -siv $path/fontconfig/10-dpi.conf ~/.config/fontconfig/conf.d/10-dpi.conf

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

# rofi
ln -siv $path/rofi/config.rasi ~/.config/rofi/config.rasi
ln -siv $path/rofi/arc-red-dark.rasi ~/.config/rofi/arc-red-dark.rasi

# termite
ln -siv $path/termite/config ~/.config/termite/config

# tmux
ln -siv $path/tmux/tmux.conf ~/.tmux.conf

# vim
ln -siv $path/vim/coc-settings.json ~/.config/nvim/coc-settings.json
ln -siv $path/vim/coc-settings.json ~/.vim/coc-settings.json
ln -siv $path/vim/init.vim ~/.config/nvim/init.vim
ln -siv $path/vim/keymap.vim ~/.vim/vim/keymap.vim
ln -siv $path/vim/plugin.vim ~/.vim/vim/plugin.vim
ln -siv $path/vim/vimrc ~/.vimrc

# Xmodmap
ln -siv $path/xorg/Xmodmap ~/.Xmodmap

# xorg
ln -siv $path/xorg/Xresources ~/.Xresources
ln -siv $path/xorg/xinitrc ~/.xinitrc

# zathura
ln -siv $path/zathura/zathurarc ~/.config/zathura/zathurarc

# zsh
ln -siv $path/zsh/LESS_TERMCAP ~/.LESS_TERMCAP 
ln -siv $path/zsh/alias.sh ~/.alias.sh
ln -siv $path/zsh/fsph_prompt.sh ~/.fsph_prompt.sh
ln -siv $path/zsh/utils_env.sh ~/.utils_env.sh
ln -siv $path/zsh/lgfs_prompt.sh ~/.lgfs_prompt.sh
ln -siv $path/zsh/zpreztorc ~/.zpreztorc
ln -siv $path/zsh/zshrc ~/.zshrc

# [root]
# xorg
# sudo ln -siv $path/xorg/20-intel.conf /etc/X11/xorg.conf.d/20-intel.conf
sudo ln -siv $path/xorg/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf

# pacman 
sudo ln -siv $path/pacman/pacman.log /var/log/pacman.log
