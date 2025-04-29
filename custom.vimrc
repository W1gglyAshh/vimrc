" ==========================
"     General Settings
" ==========================
set nocompatible
set encoding=utf-8
set fileencodings=utf-8
set mouse=a
set backspace=indent,eol,start
set hidden

" ==========================
"        UI & Display
" ==========================

set number
set showcmd
set ruler
set cursorline
set wildmenu
set lazyredraw
set scrolloff=5
set sidescrolloff=8
set laststatus=2
set showmatch
set matchtime=2
colorscheme w1gtheme

augroup MacVimGui
  autocmd!
  autocmd GUIEnter * colorscheme w1gtheme | set guifont=JetBrainsMonoNL\ Nerd\ Font:h16
augroup END

" ==========================
"        Indentation
" ==========================
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
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

" ==========================
"        Status Line
" ==========================
set statusline=%f\ %m\ [%Y]\ [%{&ff}]\ [%{&encoding}]\ [%l,%c]

