execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

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

" Disable Py-Mode by default
let g:pymode = 0
