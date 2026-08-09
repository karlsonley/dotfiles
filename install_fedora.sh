./utils/dnf.sh
./utils/flatpak.sh
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

brew install herdr
brew install kubectl
brew install siderolabs/tap/talosctl
brew install derailed/k9s/k9s
brew install fluxcd/tap/flux
brew install scw
brew update
brew upgrade
