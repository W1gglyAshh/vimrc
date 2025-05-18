" ==========================
"     General Settings
" ==========================
set nocompatible
set mouse=a
set hidden

" ==========================
"        UI & Display
" ==========================

set number
set showcmd
set ruler
set laststatus=2
set nowrap
set wildmenu
set lazyredraw
set scrolloff=5
set sidescrolloff=8
set showmatch
set matchtime=2
syntax off

augroup MacVimGui
  autocmd!
  autocmd GUIEnter * colorscheme theme | set guifont=FiraMono\ Nerd\ Font:h18 | set guicursor=a:blinkon0
augroup END

" ==========================
"        Indentation
" ==========================
set autoindent
set expandtab
set shiftwidth=5
set tabstop=8
set softtabstop=5
filetype plugin indent on

" ==========================
"          Search
" ==========================
set hlsearch
set incsearch
set ignorecase
set smartcase

" ==========================
"        File Handling
" ==========================
set autoread
set confirm
set encoding=utf-8
set fileencodings=utf-8
set backspace=indent,eol,start

