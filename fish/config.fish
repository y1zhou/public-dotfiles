# Local software path
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin

# Fish syntax highlighting
# https://github.com/matchai/dotfiles/blob/b6c6a701d0af8d145a8370288c00bb9f0648b5c2/.config/fish/config.fish
# Instead, use fish_config theme save 'fish default'
set -x COLORTERM truecolor

# Set neovim as default editor
set -x VISUAL nvim
set -x EDITOR nvim

# fzf config using ripgrep
set -x FZF_DEFAULT_COMMAND  'rg --files --no-ignore-vcs --hidden'

# Add zoxide to path
zoxide init fish | source

# Initialize starship prompt
starship init fish | source

