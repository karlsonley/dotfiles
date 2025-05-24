sudo dnf update -y
sudo dnf upgrade -y

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

# Lazygit
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit -y


# Manually ensure akmod-nvidia is not removed by dnf autoremove
# https://rpmfusion.org/Howto/NVIDIA#dnf_autoremove
sudo dnf mark user akmod-nvidia

# Cleanup
sudo dnf -y autoremove
sudo dnf -y clean all

