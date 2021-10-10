syntax on
filetype on
set hlsearch
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 2 spaces width
set shiftwidth=4
set number
set autowrite
set ruler
set scrolloff=7
set noswapfile

let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_browse_split = 4

" Go Vim
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1

nnoremap <silent> <F5> :GoBuild<CR>
nnoremap <silent> <F6> :GoRun<CR>

" Open URL with gx
nmap gx yiW:!open <cWORD><CR> "<C-r>"" & <CR><CR>

" run Python scripts with F9
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3.9' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3.9' shellescape(@%, 1)<CR>

" run CF stacks plugin for files named cloudformation-stacks.yaml
autocmd BufRead,BufNewFile cloudformation-stacks.yaml Cfstacks
