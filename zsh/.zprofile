eval "$(/opt/homebrew/bin/brew shellenv)"

# fnm load node version when changing directories
eval "$(fnm env --use-on-cd --shell zsh)"

# jenv setup
eval "$(jenv init -)"

# <<< pyenv configs START >>> #  
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv &> /dev/null; then
    eval "$(pyenv init - zsh)"
    eval "$(pyenv virtualenv-init -)"
fi
# >>> pyenv configs END <<< #
