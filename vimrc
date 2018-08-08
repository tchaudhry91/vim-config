syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': 'master' }
Plug 'nsf/gocode'
Plug 'saltstack/salt-vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'zchee/deoplete-go', { 'do': 'make'}
call plug#end()

set nocompatible

set shiftwidth=2
set softtabstop=2
set expandtab
set number
set backspace=indent,eol,start

imap jk <esc>

" Plugins Options

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_switch_buffer = 'et'

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-e>"

" airline-theme
let g:airline_theme='minimalist'

" Autocomplete
let g:deoplete#enable_at_startup = 1
