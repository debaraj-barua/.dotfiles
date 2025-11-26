# .dotfiles

Personal dotfiles repository containing configuration files for various development tools and applications.

## Installation

Clone this repository:

```sh
git clone https://github.com/debaraj-barua/.dotfiles.git
```

**Note:** The setup commands below assume the repository is cloned to `$HOME/.dotfiles`. If you cloned it elsewhere, adjust the paths accordingly.

## Configurations

### ZSH

Complete ZSH configuration with shell startup scripts and custom configurations.

**Pre Requisites:**

- Check if direnv is installed, if not install it: https://direnv.net/docs/installation.html
- Install Oh My Zsh: https://ohmyz.sh/#install
  - Install OMZ custom plugins:
    - zsh-autocomplete: https://github.com/marlonrichert/zsh-autocomplete/blob/main/docs/INSTALL.md#oh-my-zsh
    - Install powerlevel10k: https://github.com/romkatv/powerlevel10k#oh-my-zsh
    - Install zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh
- Optional:
  - Install fzf: https://junegunn.github.io/fzf/installation/
  - Install pyenv: https://github.com/pyenv/pyenv#installation
  - Install fnm: https://github.com/Schniz/fnm#installation
**Setup:**

```sh
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/zsh/.zprofile $HOME/.zprofile
ln -s $HOME/.dotfiles/zsh/.zshenv $HOME/.zshenv
ln -s $HOME/.dotfiles/zsh/.p10k.zsh $HOME/.p10k.zsh
```

See `zsh/README.md` for detailed shell startup process information.

### Neovim

Modern Neovim configuration based on Kickstart.nvim with custom settings.

**Setup:**

```sh
ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim
```

### Ghostty Terminal

Configuration for the Ghostty terminal emulator with Catppuccin Mocha theme.

**Setup:**

```sh
ln -s $HOME/.dotfiles/ghostty $HOME/.config/ghostty
```

Features:

- Catppuccin Mocha theme
- Background opacity
- Window padding
- Clipboard integration

### Vim

Traditional Vim configuration with custom statusline.

**Setup:**

```sh
ln -s $HOME/.dotfiles/vimrc/.vimrc $HOME/.vimrc
```

Or source in your existing `.vimrc`:

```sh
source ~/.dotfiles/vimrc/.vimrc
```

### Git

Git configuration with useful aliases and settings.

**Setup:**
Add to your global `.gitconfig`:

```sh
[include]
    path = ~/.dotfiles/git/.gitconfig
```

### Bash

Bash configuration with custom prompt and aliases.

**Setup:**

```sh
ln -s $HOME/.dotfiles/bashrc/.bashrc $HOME/.bashrc
```

Or source in your existing `.bashrc`:

```sh
source ~/.dotfiles/bashrc/.bashrc
```

### Dash to Panel

GNOME extension configuration for Dash to Panel.

**Setup:**

```sh
ln -s $HOME/.dotfiles/dashToPanel/.dashtopanel $HOME/.local/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/.dashtopanel
```
