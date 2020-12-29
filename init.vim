set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin(stdpath('data') . '/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Initialize plugin system
call plug#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 1


" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
  \ 'cpp': ['clangd'],
  \ }

" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)

augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:hor20
augroup END
