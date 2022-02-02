" Source other config files
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
"source ~/.vimrc
source ~/.config/nvim/config/general.vim
source ~/.config/nvim/config/plugin.vim
source ~/.config/nvim/config/extended.vim
