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
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
alias bathelp='bat --plain --language=cmd-help'
help() (
    set -o pipefail
    "$@" --help 2>&1 | bathelp
)
