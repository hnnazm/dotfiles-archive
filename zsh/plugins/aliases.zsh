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
   hash -d editor='/Users/nan/editor'
   alias editor='~editor'


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
  alias fx="open -a /Applications/Firefox.app"

 # Docker ----------------------------------------

 alias nv='docker run --rm -it\
    --mount type=bind,source=/Users/nan/,target=/root nvim'
 
 # Ranger (File Manager) -------------------------

   # Change directory within ranger
   alias m='. ranger'

 # Curl ------------------------------------------
 
   alias wttr='curl wttr.in'
   alias cheat='curl cheat.sh'

 # Transmission ----------------------------------

   alias tsm="transmission-remote"

