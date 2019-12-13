" Sergio's settings. Accumulated through several years
" LOOK
" highlight the 80 characters column
set encoding=utf-8


" LOOK
" http://vim.wikia.com/wiki/Better_colors_for_syntax_highlighting
" show trailing whitespaces
match ErrorMsg '\s\+$'
" Highlight searched strings
set hlsearch
set bg=dark
" from Martin Brochhaus https://github.com/mbrochh
set colorcolumn=80
highlight ColorColumn ctermbg=240
" highlight closing parentheses
set showmatch


"FEEL
" soft text wrap, visually but no new lines created
set wrap
set linebreak
set tabstop=4
set expandtab
set shiftwidth=4
set textwidth=80
set autoindent
filetype indent on
filetype plugin on
" https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
set foldmethod=indent
set foldlevel=9
"Disable beep (bell). Set visual bell, which doesn;t work in MacVim anyway
set vb


"FUNCTIONANLITY
" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" allow changin buffers without saving
set hidden

" for vim to jump to the last position when reopening a file
au BufNewFile,BufRead *.tex :set sw=1
set mouse=a



set ruler

" Always display the status line
set laststatus=2

let g:python3_host_prog = '/home/sergio/anaconda3/envs/main/bin/python'

