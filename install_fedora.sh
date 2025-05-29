./utils/dnf.sh
./utils/flatpak.sh

# Lazy creates an empty configfile on download
rm -rf ~/.config/lazygit

# Install Catppuccin in Gnome Terminal
curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v1.0.0/install.py | python3 -

stow --dotfiles --target="$HOME" \
  neovim \
  git \
  lazygit \
  tmux \ 
