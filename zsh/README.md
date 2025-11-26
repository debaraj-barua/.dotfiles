# ZSH Configuration

## Setup

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
## Shell Startup Process

![Shell Startup Process](./docs/shell-startup-actual.png)

Source: [Shell Startup Scripts by FlowBlok](https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html)
