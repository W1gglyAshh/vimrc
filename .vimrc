" ==========================
"     General Settings
" ==========================
set nocompatible              " Disable vi compatibility mode
set encoding=utf-8            " Ensure UTF-8 encoding
set fileencodings=utf-8       " Use UTF-8 as default encoding
set mouse=a                   " Enable mouse support
set backspace=indent,eol,start " Make backspace work as expected
set clipboard=unnamedplus     " Use system clipboard (if supported)
set hidden                    " Allow unsaved buffer switching

" ==========================
"        UI & Display
" ==========================

set termguicolors             " True color support
set number                    " Show line numbers
set showcmd                   " Show partial commands in bottom bar
set ruler                     " Show cursor position
set cursorline                " Highlight cursor line
set wildmenu                  " Enhanced command-line completion
set lazyredraw                " Improve performance on large files
set scrolloff=5               " Keep cursor centered while scrolling
set sidescrolloff=8           " Keep horizontal margin when scrolling
set laststatus=2              " Always show status line
set showmatch                 " Highlight matching brackets
set matchtime=2               " Speed up match highlight timing
syntax on                     " Enable syntax highlighting

" ==========================
"        Indentation
" ==========================
set autoindent                " Auto-indent new lines
set smartindent               " Smarter indentation
set expandtab                 " Convert tabs to spaces
set shiftwidth=4              " Indent width = 4 spaces
set tabstop=4                 " Tab width = 4 spaces
set softtabstop=4             " Soft tab width = 4 spaces

" ==========================
"          Search
" ==========================
set hlsearch                  " Highlight search results
set incsearch                 " Show search results as you type
set ignorecase                " Case insensitive search
set smartcase                 " Case-sensitive if capital letter used

" ==========================
"        File Handling
" ==========================
set autoread                  " Auto-reload files when changed externally
set confirm                   " Prompt before closing unsaved changes
set undofile                  " Enable persistent undo

" ==========================
"        Key Mappings
" ==========================
" Remap leader key to Space
let mapleader=" "

" Fast saving with <Leader>w
nnoremap <Leader>w :w<CR>

" Quit quickly with <Leader>q
nnoremap <Leader>q :q<CR>

" Move between windows easily
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Quick indenting
vnoremap < <gv
vnoremap > >gv

" Reselect last pasted text
nnoremap gp `[v`]

" Smart word navigation
nnoremap W 5w
nnoremap B 5b

" Open file explorer quickly
nnoremap <Leader>e :edit .<CR>

" Toggle line numbers
nnoremap <Leader>n :set nu! rnu!<CR>

" ==========================
"        Status Line
" ==========================
set statusline=%f\ %m\ [%Y]\ [%{&ff}]\ [%{&encoding}]\ [%l,%c]

" ==========================
"    Syntax Highlighting
" ==========================
" Background (black)
highlight Normal  guibg=#0f0f0f guifg=#ffffff

" Cursor line (gray)
highlight CursorLine guibg=#2c2c2c ctermbg=236

" Comments (gray)
highlight Comment ctermfg=Gray guifg=#6c6c6c

" Line numbers (black)
highlight LineNr ctermfg=Gray guibg=#0f0f0f guifg=#6c6c6c

" Current line number (white)
highlight CursorLineNr ctermfg=White guibg=#2c2c2c guifg=#ffffff

" Strings (green)
highlight String ctermfg=Green guifg=#8ec07c

" Keywords (blue)
highlight Keyword ctermfg=Blue guifg=#83a598

" Function names (yellow)
highlight Function ctermfg=Yellow guifg=#fabd2f

" Variables (cyan)
highlight Identifier ctermfg=Cyan guifg=#8ec07c

" Operators (magenta)
highlight Operator ctermfg=Magenta guifg=#d3869b

" ==========================
"           MacVim
" ==========================
if has("gui_macvim")
    set guifont=FiraMono\ Nerd\ Font:h15
    set linespace=4
endif
