source "$HOME/.cargo/env"

export PATH="$HOME/.jenv/bin:$PATH"


export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$HOME/.dotfiles/git/:$PATH"

# GNU tools over macOS
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
