# ================================================
#  Alias
# ================================================

 # List Directory (ls) ---------------------------

   alias ls='ls --color=auto'
   alias la='ls -lA'
   alias lsh='ls -ld .*'    # hidden file

 # Push/Pop Directory ----------------------------

   alias pu=pushd
   alias po=popd
   alias d='dirs -v'

 # Grep ------------------------------------------
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'

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
 
   # alias vim='nvim'
   # alias lv='nvim -c Ex'
   # alias goyo='nvim -c Goyo'

 # macOS -----------------------------------------

  alias hidefiles='defaults write com.apple.finder AppleShowAllFiles FALSE'
  alias showfiles='defaults write com.apple.finder AppleShowAllFiles TRUE'
  alias fx="open -a /Applications/Firefox.app"

 # Curl ------------------------------------------
 
   alias wttr='curl wttr.in'
   alias cheat='curl cheat.sh'
