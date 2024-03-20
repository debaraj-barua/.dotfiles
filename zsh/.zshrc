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

