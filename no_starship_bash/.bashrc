# run fastfetch
if [ -f /usr/bin/fastfetch ]; then
    fastfetch
fi

# set editors
export EDITOR=nvim
export VISUAL=nivm

# environment variables
export XDG_CONFIG_HOME="$HOME/.config"

# load aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# bash prompt
PS1='
\[\033[01;32m\] ╭────> \[\033[00m\]\[\033[01;36m\][ ${debian_chroot:+($debian_chroot)}\w ]\[\033[01;34m\] \[\033[01;37m\]$(__git_ps1 "[ %s]"\[\033[00m\])
\[\033[01;32m\] ╰─> \[\033[00m\]'
