sudo dnf update -y
sudo dnf upgrade -y

sudo dnf install -y \
  neovim \
  akmod-nvidia \
  xorg-x11-drv-nvidia-cuda

# Manually ensure akmod-nvidia is not removed by dnf autoremove
# https://rpmfusion.org/Howto/NVIDIA#dnf_autoremove
sudo dnf mark user akmod-nvidia
