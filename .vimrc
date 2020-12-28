syntax on
colorscheme default
set tabstop=2
set shiftwidth=2
set expandtab
set autochdir
"set makeprg=g++\ -Werror\ -Wsign-conversion\ -std=c++17\ -g\ %
nnoremap <F4> :update<cr>:make!<cr>:!./main<cr>
nnoremap <F5> :update<cr>:!make test<cr>:!./test<cr>
inoremap <C-Space> <C-N>
set autoindent
"set number
"set relativenumber

"auto closing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

if has("autocmd")
  augroup templates
    autocmd BufNewFile *.h 0r ~/.vim/templates/skeleton.h
  augroup END
endif

"VIM Plug settings
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
call plug#end()

"automatically open NERDTree on start and new buffers
"autocmd VimEnter * NERDTree
"autocmd BufWinEnter * NERDTreeMirror

"change cursor in insert mode
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"restore cursor on exit
autocmd VimLeave * silent exec "! echo -ne '\e[5 q'"
