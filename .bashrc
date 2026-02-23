# run fastfetch
if [ -f /usr/bin/fastfetch ]; then
    fastfetch
fi

# set editors
export EDITOR=nvim
export VISUAL=nivm

# load aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# lunch starship
eval "$(starship init bash)"