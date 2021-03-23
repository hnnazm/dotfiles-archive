#PROMPT='%(?.%F{34}«%f.%F{124}«%f) %B%F{51}%n%f%b ∫ %2~ ${vcs_info_msg_0_} %(?.%F{34}»%f.%F{124}»%#%f) '
PROMPT='${vcs_info_msg_0_}%B%F{51}%1~%f%b %(?.%F{34}»%f.%F{124}»%f) '
RPROMPT=""

function preexec() {
  timer=${timer:-$SECONDS}
}

function precmd() {
  if [ $timer ]; then
    timer_show=$(($SECONDS - $timer))
    export RPROMPT='%(?.%F{34}${timer_show}s%f.%F{124}${timer_show}s%f)'
    unset timer
  fi
}
