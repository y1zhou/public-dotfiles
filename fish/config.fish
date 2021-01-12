# Local software path
set -x PATH /home/pi/pkg/bin $PATH
set -x PATH /home/pi/.cargo/bin $PATH

# Initialize starship prompt
starship init fish | source

# Set neovim as default editor
set -x VISUAL nvim
set -x EDITOR nvim

# fzf config using ripgrep
set -x FZF_DEFAULT_COMMAND  'rg --files --no-ignore-vcs --hidden'
