# Show available tasks
default:
  @just --list --unsorted

# Update Homebrew packages
update:
  brew update
  @brew outdated
  #rustup check


rust_packages := `cargo install --list | rg '^[a-z0-9_-]+ v[0-9.]+:$' | cut -d' ' -f1 | tr '\n' ' '`

alias up := upgrade
# Upgrade Homebrew, conda, and cargo packages
upgrade: update
  -brew upgrade
  mamba update --all -y
  rustup update
  cargo install {{rust_packages}}
  

# Cleanup Homebrew and conda cache
clean:
  brew cleanup --prune=all -s
  mamba clean -a -y

