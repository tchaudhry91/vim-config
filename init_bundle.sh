#!/bin/bash

# vim-go
vim -c :GoInstallBinaries


# youcompleteme
cd ~/.vim/bundle/youcompleteme
git submodule update --init --recursive
./install.py --gocode-completer
