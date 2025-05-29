clone_dir=$HOME/.tmux/plugins/tpm

if [ ! -d $clone_dir ]
then
  git clone https://github.com/tmux-plugins/tpm $clone_dir
else
  (cd $clone_dir && git pull)
fi
