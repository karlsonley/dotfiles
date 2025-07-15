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

# Homebrew
if ! which brew; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo >> ~/.bashrc
  echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

brew install kubectl
brew install siderolabs/tap/talosctl
brew install derailed/k9s/k9s
brew install fluxcd/tap/flux
brew install scw
brew update
brew upgrade
