#!/bin/bash

if [ -d ~/.vim ]; then
    echo '.vim directory already exists.'
    exit
fi

git clone https://github.com/lamengao/dotvim.git ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim -u ~/.vim/vimrc +BundleInstall! +BundleClean +qall

rm ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc

echo "Lamengao's dotvim installed."
