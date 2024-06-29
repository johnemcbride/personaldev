inoremap jk <ESC>
syntax on 
set number
set noswapfile 
set hlsearch 
set ignorecase 
set incsearch 
set tabstop=4
set expandtab

call plug#begin()


" Searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

call plug#end()
" FZF key bindings
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }
set re=0
