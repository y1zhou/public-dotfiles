# My dotfiles
A place to save / share all my dotfiles.

## Neovim
The config is a simplified version of the combination of two popular `vimrc` files: one from [@amix](https://github.com/amix/vimrc) and another from [@rafi](https://github.com/rafi/vim-config). The plugins are installed through [vim-plug](https://github.com/junegunn/vim-plug):

```bash
# Neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Fish
Fish shell setup using [fisher](https://github.com/jorgebucaran/fisher) and some other simple functions. Run `fisher` to install / update all the plugins in the fisherfile.

## Jupyter
The configuration for JupyterHub Notebooks.
