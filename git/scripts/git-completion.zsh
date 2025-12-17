# Git custom command completion
# Automatically discover all git-* commands from PATH and register them for autocomplete
# This makes custom commands like "git check-fetch" and "git clean-remote" appear in completion
# Pattern from /usr/share/zsh/5.9/functions/_git documentation
if [[ -n "$ZSH_VERSION" ]]; then
    local -a git_commands
    # Find all git-* commands and filter out built-ins and config files
    git_commands=(${${(M)${(k)commands}:#git-*}/git-/})
    # Remove built-in git commands and config files
    git_commands=(${git_commands:#(upload-pack|upload-archive|receive-pack|shell|cvsserver|completion.zsh)})
    
    if (( ${#git_commands} > 0 )); then
        zstyle ':completion:*:*:git:*' user-commands $git_commands
    fi
fi

