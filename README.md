# Dotfiles

## 1.Config list

- aria2
- firefoxconfig
- fontconfig
- i3wm(i3gaps,i3status)
- mpd, ncmpcpp
- terminal(termite, urxvt)
- tmux
- vim
- zsh

## 2.Installation

1. **Backup** your old config files in necessary.(Optional)

2. **Clone** the repositories to directory '.dotfiles'.

    ```shell
    $ git clone https://github.com/breesze/dotfiles.git .dotfiles
    ```

3. Enter the dotfiles folder and execute the **setup script**.

    ```shell
    $ cd .dotfiles
    $ ./install.sh
    ```
## 3.Announcements
- If you change the 'dotfiles' path, you should repeat **step 3** to make sure
   the symblic point to the right file.

- If you don't want some files, remove it, and comment it out in the script.

