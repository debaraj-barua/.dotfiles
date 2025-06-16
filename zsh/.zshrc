export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$HOME/.dotfiles/git/:$PATH"
alias git-back='git stash && git checkout - && git stash pop'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
notunes-show () { 
    osascript -e 'quit app "noTunes"'; 
    defaults delete digital.twisted.noTunes; 
    open -a noTunes 
}

# alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
# alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

# do not alias -h since it is also used to check for symlinks like [[-h $file]]
alias -g :B='-h 2>&1 | bat --language=help --style=plain'

alias bathelp='bat --plain --language=cmd-help'
help() (
    set -o pipefail
    "$@" --help 2>&1 | bathelp
)


# <<< fnm configs START >>> #

# fnm load node version when changing directories
# moved to the top of ~/.zshrc to avoid p10k instant prompt warnings
# eval "$(fnm env --use-on-cd --shell zsh)"

# fnm completions
fpath+="/opt/homebrew/share/zsh/site-functions"
autoload -Uz compinit
compinit

# avoid failed commands because of habits
alias nvm='echo -n "fnm-> " && fnm'

# >>> fnm configs END <<< #

# <<< pyenv configs START >>> #  
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"
# >>> pyenv configs END <<< #

### vim opens nvim
alias vim="nvim"
alias vi="nvim"
alias oldvim="/usr/bin/vim"

