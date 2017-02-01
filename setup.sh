#!/bin/sh

# Set up my vim config

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim &&

$(cd ~/.vim/bundle && \
  git clone https://github.com/wlangstroth/vim-racket.git && \
  https://github.com/flazz/vim-colorschemes.git)

echo "execute pathogen#infect()" > ~/.vimrc
echo "syntax enable" >> ~/.vimrc
echo "filetype plugin indent on" >> ~/.vimrc
echo "set expandtab" >> ~/.vimrc
echo "set number" >> ~/.vimrc
echo "colorscheme alduin" >> ~/.vimrc




