# ZSH Configuration

## Setup

### Install the required CLI tools first
- ohmyzsh
   - git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   - git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   - powerlevel10k
    ```sh
     git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
    ```
   - anything else_
- direnv
- pyenv
- fnm
- fzf
- jenv



- Symlink the required files to replace the default ZSH configuration files in your $HOME directory.

```sh
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/zsh/.zprofile $HOME/.zprofile
ln -s $HOME/.dotfiles/zsh/.zshenv $HOME/.zshenv
```

## Shell Startup Process

![Shell Startup Process](./docs/shell-startup-actual.png)

Source: [Shell Startup Scripts by FlowBlok](https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html)
