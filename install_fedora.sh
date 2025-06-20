./utils/dnf.sh
./utils/flatpak.sh
./utils/tmux_plugins.sh

# Lazy creates an empty configfile on download
rm -rf ~/.config/lazygit

stow --dotfiles --target="$HOME" \
  neovim \
  git \
  lazygit \
  tmux

sudo stow --target="/etc" \
  keyd

sudo keyd reload
