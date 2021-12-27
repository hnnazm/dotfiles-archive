# ================================================
#  Alias
# ================================================

# ls ––––––––––––––––––––––––––––––––––––––––––––

  alias ls='ls -G'
  alias la='ls -lA'
  alias lsh='ls -ld .*'    # hidden file

# push/pop ––––––––––––––––––––––––––––––––––––––

  alias pu=pushd
  alias po=popd
  alias d='dirs -v'

# grep ––––––––––––––––––––––––––––––––––––––––––

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'

# mkdir –––––––––––––––––––––––––––––––––––––––––

  alias mkdir='mkdir -pv'

# cd ––––––––––––––––––––––––––––––––––––––––––––

  alias ..='cd ..'
  alias ...='cd ../../'

  hash -d dotfile="$XDG_CONFIG_HOME"    # frequent directory

# rm ––––––––––––––––––––––––––––––––––––––––––––

  alias rm='rm -i'

# history –––––––––––––––––––––––––––––––––––––––

  alias h='history'

# neovim ––––––––––––––––––––––––––––––––––––––––

  alias vim='nvim'
# alias lv='nvim -c Ex'
# alias goyo='nvim -c Goyo'

# macOS –––––––––––––––––––––––––––––––––––––––––

  alias hidefiles='defaults write com.apple.finder AppleShowAllFiles FALSE'
  alias showfiles='defaults write com.apple.finder AppleShowAllFiles TRUE'
  alias fx="open -a /Applications/Firefox.app"

# curl ––––––––––––––––––––––––––––––––––––––––––

  alias wttr='curl wttr.in'
  alias cheat='curl cheat.sh'
