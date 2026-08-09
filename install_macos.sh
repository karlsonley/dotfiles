./utils/brew.sh
./utils/tmux_plugins.sh

# Lazy creates an empty configfile on download
rm -rf ~/.config/lazygit

# Herdr writes logs and session sockets next to its config, so keep the
# directory real and let stow link only config.toml into it
mkdir -p ~/.config/herdr

stow --dotfiles --target="$HOME" \
  neovim \
  git \
  lazygit \
  tmux \
  herdr \
  ghostty
