#!/bin/bash

# vim-go
vim -c :GoInstallBinaries  -c q! temp_file


# youcompleteme
cd ~/.vim/bundle/youcompleteme
git submodule update --init --recursive
python2 install.py --gocode-completer
