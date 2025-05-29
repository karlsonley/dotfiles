# Install TPM
clone_dir=$HOME/.tmux/plugins/tpm

if [ ! -d $clone_dir ]
then
  git clone https://github.com/tmux-plugins/tpm $clone_dir
else
  (cd $clone_dir && git pull)
fi

# Install Catppuccin TMUX
clone_dir=$HOME/.config/tmux/plugins/catppuccin/tmux

if [ ! -d $clone_dir ]
then
  git clone https://github.com/catppuccin/tmux.git $clone_dir
else
  (cd $clone_dir && git pull)
fi
