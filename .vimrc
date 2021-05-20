syntax on
filetype on
set hlsearch
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set number
set autowrite

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 3
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" Go Vim
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
nnoremap <silent> <F5> :GoBuild<CR>
nnoremap <silent> <F6> :GoRun<CR>
