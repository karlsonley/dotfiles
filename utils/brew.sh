# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew upgrade

# Install packages
brew install gcc
brew install tmux
brew install git
brew install lazygit
brew install curl
brew install wget
brew install gnu-tar
brew install gzip
brew install stow
brew install rclone
brew install controlplaneio-fluxcd/tap/flux-operator
brew install controlplaneio-fluxcd/tap/flux-operator-mcp
brew install talhelper

# Wait before continuing
sleep 1

# Install casks
brew install --cask kitty
brew install --cask font-jetbrains-mono-nerd-font
