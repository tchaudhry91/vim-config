#!/bin/bash

# youcompleteme
cd ~/.vim/bundle/youcompleteme
git submodule update --init --recursive
python2 install.py --gocode-completer
