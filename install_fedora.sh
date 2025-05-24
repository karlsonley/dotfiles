./utils/dnf.sh
./utils/flatpak.sh

# Lazy creates an empty configfile on download
rm -rf ~/.config/lazygit

stow --dotfiles --target="$HOME" \
  neovim \
  git \
  lazygit \
