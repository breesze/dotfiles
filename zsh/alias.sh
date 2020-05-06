eval $(thefuck --alias)

export LESS="--RAW-CONTROL-CHARS"
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP

alias ray='export ALL_PROXY=socks5://127.0.0.1:10889'
alias uv='unset ALL_PROXY'
alias cip='curl cip.cc'
alias wea='curl wttr.in/shenzhen'
alias ctg='ctags -R --c++-kinds=+px --fields=+niazs --extras=+q -f .tags'
alias clg='clang++ -O2 -std=c++14 -Weverything -Wno-c++98-compat'
alias nocap='amixer set Capture nocap' # WKQTM

alias ls='ls --color=tty'
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'

alias cp='cp -i'
alias afind='ack -il'
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias egrep='egrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias fgrep='fgrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias z='_z 2>&1'

alias VIM='vim'
alias emacs='vim'
alias pc='proxychains4'
alias rn='ranger'
alias mm='ncmpcpp'
alias cm='cppman'
alias zc='z -c'

alias -s c='vim'
alias -s cc='vim'
alias -s cpp='vim'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s bz2='tar -xjvf'

alias ga='git add'
alias gac='git add . && git commit -m'
alias gb='git branch'
alias gcb='git checkout -b'
alias gc='git commit -m'
alias gd='git diff'
alias gp='git push'
alias gpm='git pull origin master'
alias gl='git pull'
alias gm='git merge'
alias gst='git status'
alias glola='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all'
alias glols='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --stat'
