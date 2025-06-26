sudo dnf upgrade -y

# Packages
sudo dnf install -y \
  neovim \
  gcc \
  tmux \
  git \
  curl \
  wget \
  tar \
  gzip \
  akmod-nvidia \
  xorg-x11-drv-nvidia-cuda \
  python3.12 \
  fzf \
  ripgrep \
  stow \
  chromium \
  graphviz \
  ripgrep \
  rust \
  cargo \
  helm \

# Lazygit
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit -y

# Docker
sudo dnf remove -y docker \
                   docker-client \
                   docker-client-latest \
                   docker-common \
                   docker-latest \
                   docker-latest-logrotate \
                   docker-logrotate \
                   docker-selinux \
                   docker-engine-selinux \
                   docker-engine

# Keyd
sudo dnf copr enable alternateved/keyd -y
sudo dnf install keyd -y
sudo systemctl enable --now keyd

sudo dnf install dnf-plugins-core -y
sudo dnf-3 config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo -y

sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

sudo systemctl enable --now docker

sudo groupadd docker
sudo usermod -aG docker $USER

# Terraform
sudo dnf config-manager addrepo --from-repofile=https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf install terraform -y

# Manually ensure akmod-nvidia is not removed by dnf autoremove
# https://rpmfusion.org/Howto/NVIDIA#dnf_autoremove
sudo dnf mark user akmod-nvidia -y

# Homebrew deps
sudo dnf group install development-tools -y

# Cleanup
sudo dnf -y autoremove
sudo dnf -y clean all

