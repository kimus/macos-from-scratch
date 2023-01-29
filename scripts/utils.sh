COLOR_RESET="\033[0m"
COLOR_BLUE="\033[01;34m"
COLOR_ORANGE="\033[00;33m"

info () {
  printf "\r[ $COLOR_BLUE..$COLOR_RESET ] $1\n"
}

execute () {
  printf "\r[ $COLOR_BLUE->$COLOR_RESET ] $1\n"
}

user () {
  printf "\r[ \033[0;33m??$COLOR_RESET ] $1\n"
}

success () {
  printf "\r[ \033[00;32mOK$COLOR_RESET ] $1\n"
}

warn () {
  printf "\r[ ${COLOR_ORANGE}!!$COLOR_RESET ] $1\n"
}


fail () {
  printf "\r[\033[0;31mFAIL$COLOR_RESET] $1\n" >&2
  echo ''
}

prompt () {
  read -p "$(echo "\r[ $COLOR_BLUE??$COLOR_RESET ] $1 ")" -n 1 -r
}