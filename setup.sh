#!/bin/sh
# Installs Vim Plug
install_path="$HOME/.local/share/nvim/site/autoload/plug.vim"

if [ ! -f $install_path ]; then 
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if ! type "nvim" > /dev/null; then
  echo "neovim does not exists"
fi
