# My dotfiles

A place to save / share all my dotfiles, and some CLI tools that I use frequently. Most of these tools can be installed with [Homebrew](https://brew.sh/) if you are on macOS.

| Package                                               | Description                           | Installation                                                              |
| ----------------------------------------------------- | ------------------------------------- | ------------------------------------------------------------------------- |
| [bat](https://github.com/sharkdp/bat)                 | Replaces `cat`                        | [GitHub releases](https://github.com/sharkdp/bat/releases)                |
| [delta](https://github.com/dandavison/delta)          | Pager for git diffs                   | [Installation page](https://dandavison.github.io/delta/installation.html) |
| [duckdb](https://duckdb.org/)                         | Quick analysis of text files with SQL | [GitHub releases](https://github.com/duckdb/duckdb/releases/), `pip`      |
| [duf](https://github.com/muesli/duf)                  | `df` alternative                      | [GitHub releases](https://github.com/muesli/duf/releases)                 |
| [dust](https://github.com/bootandy/dust)              | `du` alternative                      | [GitHub releases](https://github.com/bootandy/dust/releases)              |
| [fd](https://github.com/sharkdp/fd)                   | `find` alternative                    | [GitHub readme](https://github.com/sharkdp/fd#installation)               |
| [fnm](https://github.com/Schniz/fnm)                  | Node.js version manager               | `curl -fsSL https://fnm.vercel.app/install \| bash`                       |
| [fzf](https://github.com/junegunn/fzf)                | Fuzzy finder                          | See the docs                                                              |
| [httpie](https://httpie.io/cli)                       | HTTP and API testing client           | `pip` or installation section                                             |
| [hugo](https://gohugo.io/)                            | Static site generator                 | [Installation guide](https://gohugo.io/getting-started/installing/)       |
| [jq](https://stedolan.github.io/jq/)                  | JSON processor                        | [Binaries](https://stedolan.github.io/jq/download/)                       |
| [lima](https://github.com/lima-vm/lima)               | Containers on macOS                   | `brew install lima`                                                       |
| [litecli](https://github.com/dbcli/litecli)           | Pretty CLI for `sqlite3`              | `pip install litecli`                                                     |
| [lsd](https://github.com/Peltoche/lsd)                | Colorful `ls`                         | [GitHub releases](https://github.com/Peltoche/lsd/releases)               |
| [pyenv](https://github.com/pyenv/pyenv)               | Python version manager                | [GitHub readme](https://github.com/pyenv/pyenv)                           |
| [neofetch](https://github.com/dylanaraps/neofetch)    | System information                    | [Wiki](https://github.com/dylanaraps/neofetch/wiki/Installation)          |
| [neovim](https://neovim.io/)                          | Next generation `vim`                 | [GitHub releases](https://github.com/neovim/neovim/releases)              |
| [openconnect](https://www.infradead.org/openconnect/) | Cisco AnyConnect VPN client           | [Download page](https://www.infradead.org/openconnect/download/)          |
| [ouch](https://github.com/ouch-org/ouch)              | Compression and decompression         | `cargo install ouch`                                                      |
| [PDM](https://github.com/pdm-project/pdm)             | Python package manager                | [Installation guide](https://pdm.fming.dev/#installation)                 |
| [rclone](https://rclone.org/)                         | Sync files to cloud storage           | [Binary downloads](https://rclone.org/downloads/)                         |
| [rename](https://metacpan.org/dist/File-Rename)       | Rename files using regex              | `apt`                                                                     |
| [ripgrep](https://github.com/BurntSushi/ripgrep)      | Fast and recursive `grep`             | [Wiki](https://github.com/BurntSushi/ripgrep#installation)                |
| [starship](https://starship.rs/)                      | Pretty shell prompt                   | `sh -c "$(curl -fsSL https://starship.rs/install.sh)"`                    |
| [zoxide](https://github.com/ajeetdsouza/zoxide)       | Smarter `cd` and `z`                  | [Wiki](https://github.com/ajeetdsouza/zoxide#installation)                |

## Fish

Fish shell setup using [fisher](https://github.com/jorgebucaran/fisher) and some other simple functions. The prompt used is [starship](https://starship.rs).

```bash
curl -fsSL https://starship.rs/install.sh | bash
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher update

# Remove login welcome message
set fish_greeting
```

## Neovim

I gave up configuring `nvim` by myself and just use [AstroNvim](https://github.com/AstroNvim/AstroNvim) now.

## Jupyter

The configuration for JupyterHub Notebooks.

## Vim

The config is a simplified version of the combination of two popular `vimrc` files: one from [@amix](https://github.com/amix/vimrc) and another from [@rafi](https://github.com/rafi/vim-config). The plugins are installed through [vim-plug](https://github.com/junegunn/vim-plug):

```bash
# Neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

After `vim-plug` is installed, copy the `vim/` directory to `~/.config/vim`. Then run `:PlugInstall` inside `vim`.
