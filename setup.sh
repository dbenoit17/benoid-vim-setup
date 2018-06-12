#!/bin/sh

# Set up my vim config

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim &&

$(cd ~/.vim/bundle && \
  git clone https://github.com/wlangstroth/vim-racket.git && \
  git clone https://github.com/flazz/vim-colorschemes.git)

cat > ~/.vimrc << END
execute pathogen#infect()
syntax enable
filetype plugin indent off
set expandtab
set number
colorscheme alduin
END



