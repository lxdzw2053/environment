user_value=$(sed 's#.*/##' <<< $(pwd))

PS1="%F{cyan} LxDs-Computer: ${user_value//$USER/~} $ %F{white}"

foo () {
  if [[ $PWD == $HOME ]]; then
    source ~/.zshrc
  else
    source ~/.zshrc
  fi
}

chpwd_functions+=(foo)
