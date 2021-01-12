# My dotfiles

A place to save / share all my dotfiles.

## Neovim

The config is a simplified version of the combination of two popular `vimrc` files: one from [@amix](https://github.com/amix/vimrc) and another from [@rafi](https://github.com/rafi/vim-config). The plugins are installed through [vim-plug](https://github.com/junegunn/vim-plug):

```bash
# Neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

After `vim-plug` is installed, copy the `nvim/` directory to `~/.config/nvim`. Then inside `nvim`, run `:PlugInstall` and `:CocInstall coc-json coc-python coc-sh coc-docker coc-r-lsp`.

The `pynvim` package for Python 3 provider and `neovim` package for Node.js provider are optional but recommended.

## Fish

Fish shell setup using [fisher](https://github.com/jorgebucaran/fisher) and some other simple functions. The prompt used is [starship](https://starship.rs).

```bash
curl -fsSL https://starship.rs/install.sh | bash
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher install

# disable completing pairs unless the cursor is at the end of the line
set -U pisces_only_insert_at_eol 1
```

## Jupyter

The configuration for JupyterHub Notebooks.
