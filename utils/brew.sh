# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew upgrade

# Editor / shell tooling
brew install neovim
brew install tree-sitter-cli # nvim-treesitter (main) builds parsers with the CLI
brew install ripgrep
brew install fd
brew install fzf
brew install gcc
brew install tmux
brew install herdr
brew install git
brew install gh
brew install lazygit
brew install thefuck
brew install mise

# Core utilities
brew install curl
brew install wget
brew install gnu-tar
brew install gzip
brew install dos2unix
brew install stow
brew install rclone
brew install nmap
brew install sshpass
brew install poppler # PDF tooling / pdftotext

# Languages / runtimes
brew install node
brew install python@3.13
brew install uv

# Cloud / infra
brew install awscli
brew install azure-cli
brew install scw
brew install tailscale
brew install kubernetes-cli
brew install helm
brew install opentofu
brew install tflint
brew install sops
brew install age
brew install tea
brew install controlplaneio-fluxcd/tap/flux-operator
brew install controlplaneio-fluxcd/tap/flux-operator-mcp
brew install talhelper

# Keyboard
brew install qmk/qmk/qmk

# Secrets
brew install protonpass/tap/pass-cli

# Wait before continuing
sleep 1

# Install casks
brew install --cask kitty
brew install --cask ghostty
brew install --cask zed
brew install --cask visual-studio-code
brew install --cask docker-desktop
brew install --cask rectangle
brew install --cask raycast
brew install --cask keymapp
brew install --cask macfuse
brew install --cask font-jetbrains-mono-nerd-font
