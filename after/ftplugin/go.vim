nmap <silent> <Leader>i <Plug>(go-info)
nmap <silent> <Leader>q <Plug>(go-doc-split)
nmap <silent> <Leader>d <Plug>(go-def-vertical)
nmap <silent> <Leader>b <Plug>(go-build)

setlocal shiftwidth=4
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab!

let g:go_auto_type_info = 0

let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
