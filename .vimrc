syntax on
let &t_ut=''            " bugfix for background in kitty terminal
" colorscheme PaperColor
" colorscheme color
" colorscheme tender
" colorscheme nord
" colorscheme herokudoc
colorscheme kuroi
" colorscheme apprentice
" colorscheme getafe
" colorscheme transient
" colorscheme fogbell
" colorscheme codedark
" colorscheme phoenix
" colorscheme monotonic

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40


set nobackup
set noswapfile

set mouse=n             " enable mouse in normal mode
set nowrap              " default no line wapping
set number              " show number of lines
set showcmd             " show command in bottom bar
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set scrolloff=999       " scroll when cursor above 15 lines from bottom
set shortmess+=I        " disable startup message
set showtabline=2       " show tabline always
set ruler


set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set smartindent         " auto indent for C-like syntax

set listchars=tab:>·,space:·
set list

ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O
ino {;<CR> {<CR>};<ESC>O

set exrc
set secure


"----------------- Plugins -----------------

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Latex
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" C++ autocomplete
Plug 'https://github.com/xavierd/clang_complete.git'
let g:clang_library_path='/usr/lib/llvm-10/lib'
set completeopt-=preview

" clang-format
Plug 'https://github.com/rhysd/vim-clang-format.git'
let g:clang_format#code_style='llvm'

" Initialize plugin system
call plug#end()
