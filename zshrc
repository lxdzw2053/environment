cd ~/desktop;

# quick debugging shortcuts
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"

alias cat_vimrc="cat ~/.vimrc"
alias cat_zshrc="cat ~/.zshrc"

alias zsh_reset="source ~/.zshrc"

# development speedup process
alias flask-setup="python3 -m venv venv; touch app.py; mkdir templates"
alias build-system="touch readme.md; mkdir src; touch Makefile; mkdir Docker; touch Docker/Dockerfile; touch .gitignore; git init;"

# prompt
user_value=$(sed 's#.*/##' <<< $(pwd))

if `git rev-parse --is-inside-work-tree 2>/dev/null`; then
	git_existence_status=" %F{009}$(basename `git rev-parse --show-toplevel`):($(git for-each-ref --format='%(refname:short)' refs/heads/))"
else
	git_existence_status=""
fi
PS1="%F{023}zsh-${ZSH_VERSION}: ${user_value//$USER/~}$git_existence_status%F{023} $ %F{white}"

reset_zshrc () {
	if [[ $PWD == $HOME ]]; then
		source ~/.zshrc
	else
		source ~/.zshrc
	fi
}

chpwd_functions+=(reset_zshrc)

# function for listing directories while going into a different directory
cdls() {cd "$@" && ls}

# function for relplacing ls -a
lsa() {ls -a}

# function for adding -a to my cdls function 
cdlsa() {cd "$@" && ls -a}

# function that checks for the existence of a file
e() {
	if [ -e "$@" ]; then
		echo "found :)"
	else
		echo "not found :("
	fi
}

# opam configuration
[[ ! -r /Users/$USER/.opam/opam-init/init.zsh ]] || source /Users/$USER/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
