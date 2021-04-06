bindkey -v

# Change cursor on insert/normal mode
zle -N zle-line-init
zle -N zle-keymap-select

# Use vi keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# Fix backspace bug when switching modes
bindkey "^?" backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word

# Edit line in vi buffer ctrl-v
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line
# Enter vi buffer from normal mode
autoload -U edit-command-line && zle -N edit-command-line && bindkey -M vicmd "^v" edit-command-line


# Change cursor shape for different vi modes.
    function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] ||
        [[ $1 = 'block' ]]; then
        echo -ne '\e[1 q'
    elif [[ ${KEYMAP} == main ]] ||
        [[ ${KEYMAP} == viins ]] ||
        [[ ${KEYMAP} = '' ]] ||
        [[ $1 = 'beam' ]]; then
        echo -ne '\e[5 q'
    fi
    }

# Startup with insert mode cursor
    zle-line-init() {
        zle -K viins  # can be removed if `bindkey -V` has been set elsewhere
        echo -ne "\e[5 q"
    }
