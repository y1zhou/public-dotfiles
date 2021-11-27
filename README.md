# My dotfiles

A place to save / share all my dotfiles.

## Neovim

The config is a simplified version of the combination of two popular `vimrc` files: one from [@amix](https://github.com/amix/vimrc) and another from [@rafi](https://github.com/rafi/vim-config). The plugins are installed through [vim-plug](https://github.com/junegunn/vim-plug):

```bash
# Neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

After `vim-plug` is installed, copy the `nvim/` directory to `~/.config/nvim`. Then run `:PlugInstall` inside `nvim`.

The `pynvim` package for Python 3 provider and `neovim` package for Node.js provider are optional but recommended. To get the LSP client working, language servers need to be installed. For example, `npm i -g pyright` is required for the Python language.

## Fish

Fish shell setup using [fisher](https://github.com/jorgebucaran/fisher) and some other simple functions. The prompt used is [starship](https://starship.rs).

```bash
curl -fsSL https://starship.rs/install.sh | bash
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher update

# Remove login welcome message
set fish_greeting

# Disable completing pairs unless the cursor is at the end of the line
set -U pisces_only_insert_at_eol 1

# Set the default Node.js version for new shells
set -U nvm_default_version 14.15.0
```

## Jupyter

The configuration for JupyterHub Notebooks.
