# for editing dotfiles
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc" 

# project setup aliases 
alias flask-setup="python3 -m venv venv; touch app.py; mkdir templates"
alias build-system="touch Makefile; mkdir Docker; touch Docker/Dockerfile; touch .gitignore; git init;"

# prompt code
user_value=$(sed 's#.*/##' <<< $(pwd)) 

if `git rev-parse --is-inside-work-tree 2>/dev/null`; then
	git_existence_status=" %F{magenta}git($(basename `git rev-parse --show-toplevel`))"
else
	git_existence_status=""
fi
  
PS1="%F{cyan}zsh: ${user_value//$USER/~}$git_existence_status%F{cyan} $ %F{white}"

foo () {
	if [[ $PWD == $HOME ]]; then
	     source ~/.zshrc
	else
	     source ~/.zshrc
	fi
}
chpwd_functions+=(foo)
