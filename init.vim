" NVIM specifc rc file

set encoding=utf-8
set noswapfile
set nobackup
set nowritebackup
syntax enable
set autoindent
set fileformat=unix
" for vim to jump to the last position when reopening a file
au BufNewFile,BufRead *.tex :set sw=1
set mouse=a

" --- look and feed
set bg=dark
set scrolloff=5
" tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" highlight the 80 characters column
set colorcolumn=80
highlight ColorColumn ctermbg=240
" show trailing whitespaces
match ErrorMsg '\s\+$'
" Highlight searched strings
set hlsearch
" highlight closing parentheses
set showmatch
" folds
set foldmethod=indent
set foldlevel=9
"Disable beep (bell). Set visual bell, which doesn;t work in MacVim anyway
set vb
" Always display the status line
set laststatus=2
" Allow to change buffers without svaing them. i.e. hiding the buffer
set hidden

" ----- FOR vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" A popular colorscheme
Plug 'morhetz/gruvbox'
" Intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Browse through buffers with [b and ]b
Plug 'tpope/vim-unimpaired'

call plug#end()
" ----- FOR vim-plug

" ----- FOR coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" ----- FOR coc



colorscheme gruvbox

