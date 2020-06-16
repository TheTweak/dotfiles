syntax on
colorscheme default
set tabstop=2
set shiftwidth=2
set expandtab
set makeprg=g++\ -std=c++17\ -g\ %
nnoremap <F4> :update<cr>:make!<cr>
nnoremap <F5> :!./a.out<cr>
inoremap <C-Space> <C-N>
set autoindent
set number

"auto closing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
