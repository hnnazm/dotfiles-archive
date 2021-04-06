# ================================================
#  Alias
# ================================================

 # List Directory (ls) ---------------------------

   alias ls='ls -GC'
   alias ll='ls -lh'
   alias la='ls -A'
   alias lu='ls -hula'

   # links that point to directories
   alias lsd='ls -ld *(-/dn)'

   # list only file beginning with "."
   alias lsa='ls -ld .*'

 # Push/Pop Directory ----------------------------

   alias pu=pushd
   alias po=popd
   alias d='dirs -v'

 # Create Directory ------------------------------

   alias mkdir='mkdir -pv'

 # Change Directory ------------------------------
 
   alias ..='cd ..'
   alias ...='cd ../../'

   # frequent directory
   hash -d dotfile="$XDG_CONFIG_HOME"


 # Remove ----------------------------------------

   # alias rm='rm -i'

 # History ---------------------------------------

   alias h='history'

 # Nvim ------------------------------------------
 
   alias vim='nvim'
   alias lv='nvim .'
   alias goyo='nvim -c Goyo'

 # macOS -----------------------------------------

   alias hidefiles='defaults write com.apple.finder AppleShowAllFiles FALSE'
   alias showfiles='defaults write com.apple.finder AppleShowAllFiles TRUE'

 # Docker ----------------------------------------

   alias nv='docker run --rm -it\
    --mount type=bind,source=/Users/nan/,target=/root nvim'
 
 # Curl ------------------------------------------
 
   alias wttr='curl wttr.in'
   alias cheat='curl cheat.sh'

 # Transmission ----------------------------------

   alias tsm="transmission-remote"

