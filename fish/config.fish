# Local software path
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin

# Fish syntax highlighting
# https://github.com/matchai/dotfiles/blob/b6c6a701d0af8d145a8370288c00bb9f0648b5c2/.config/fish/config.fish
# Instead, use fish_config theme save 'fish default'
set -x COLORTERM truecolor

# Set helix as default editor
set -x VISUAL hx
set -x EDITOR hx

# Commands to run in interactive sessions can go here
if status is-interactive
    # Configure fzf.fish key bindings
    # FEATURE            |  MNEMONIC KEY SEQUENCE        |  CORRESPONDING OPTION
    # Search directory   |  Ctrl+Alt+F (F for file)      |  --directory
    # Search git log     |  Ctrl+Alt+L (L for log)       |  --git_log
    # Search git status  |  Ctrl+Alt+S (S for status)    |  --git_status
    # Search history     |  Ctrl+R     (R for reverse)   |  --history
    # Search variables   |  Ctrl+V     (V for variable)  |  --variables
    # Search processes   |  Ctrl+Alt+P (P for process)   |  --processes
    fzf_configure_bindings --directory=\ct --git_status=\cg --history=\cr --variables=\cv --processes=\cp
    set fzf_preview_dir_cmd lsd -A --color=always
    set fzf_fd_opts --hidden --exclude=.git --no-ignore

    # Setup fish to use starship and zoxide
    starship init fish | source
    zoxide init fish | source
end
