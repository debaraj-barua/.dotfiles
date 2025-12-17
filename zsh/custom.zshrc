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
# Custom git command completions
fpath+="$HOME/.dotfiles/git/scripts"
autoload -Uz compinit
compinit

# avoid failed commands because of habits
alias nvm='echo -n "fnm-> " && fnm'

# >>> fnm configs END <<< #

# <<< pyenv configs START >>> #
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv &> /dev/null; then
    eval "$(pyenv init - zsh)"
    eval "$(pyenv virtualenv-init -)"
fi
# >>> pyenv configs END <<< #

### vim opens nvim
alias vim="nvim"
alias vi="nvim"
alias oldvim="/usr/bin/vim"


## Open Cursor from Terminal
function cursor {
    open -a "/Applications/Cursor.app" "$@"
}

# VSCode shell integration
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"


# Git user email management
git-set-email() {
    local email="${1:-$GIT_USER_EMAIL}"
    
    if [[ -z "$email" ]]; then
        echo "Error: No email provided. Either:"
        echo "  1. Set GIT_USER_EMAIL environment variable, or"
        echo "  2. Pass email as argument: git-set-email user@example.com"
        return 1
    fi
    
    git config user.email "$email"
    echo "Git user email set to: $email"
    
    # Optionally show current git config
    echo "Current git user config:"
    git config user.name
    git config user.email
}

# Shorthand alias
alias gse='git-set-email'

# Function to show current git user info
git-show-user() {
    echo "Current git user configuration:"
    echo "Name:  $(git config user.name)"
    echo "Email: $(git config user.email)"
}

alias gsu='git-show-user'

# Git custom command completion
[ -f "$HOME/.dotfiles/git/scripts/git-completion.zsh" ] && source "$HOME/.dotfiles/git/scripts/git-completion.zsh"
