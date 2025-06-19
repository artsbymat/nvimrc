# nvimrc

A minimalist yet powerful Neovim config for efficient coding.

## Installation

```shell
$ sudo pacman -S neovim tree-sitter wl-clipboard ripgrep fd stylua lua-language-server nvm trash-cli shfmt ttf-jetbrains-mono-nerd wakatime
```

Add the following to your `~/.bashrc` or any shell config file:

```
source /usr/share/nvm/init-nvm.sh
```

Exit terminal and run:

```shell
$ nvm install --lts
$ nvm use --lts
$ npm install -g typescript typescript-language-server prettier vscode-langservers-extracted @olrtg/emmet-language-server @tailwindcss/language-server eslint_d @fsouza/prettierd bash-language-server
$ git clone https://github.com/artsbymat/nvimrc.git ~/.config/nvim
$ nvim
```
