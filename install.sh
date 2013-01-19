#!/bin/bash

if [[ ! -d $vimDir ]]; then
    echo '.vim directory already exists.'
    exit
fi

git clone https://github.com/lamengao/dotvim.git ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

rm ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc

echo "Lamengao's dotvim installed."
