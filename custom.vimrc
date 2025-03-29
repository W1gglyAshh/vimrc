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
let mapleader=","

" Fast saving with <Leader>w
nnoremap <Leader>w :w<CR>

" Quit quickly with <Leader>q
nnoremap <Leader>q :q<CR>

" Quick indenting
vnoremap < <gv
vnoremap > >gv

" Reselect last pasted text
nnoremap gp `[v`]

" Open file explorer quickly
nnoremap <Leader>e :edit .<CR>

" ==========================
"        Status Line
" ==========================
set statusline=%f\ %m\ [%Y]\ [%{&ff}]\ [%{&encoding}]\ [%l,%c]

" ==========================
"       Terminal Colors
" ==========================
augroup MyTermColors
    autocmd!
    autocmd VimEnter * highlight Normal ctermfg=255          " White text
    autocmd VimEnter * highlight Comment ctermfg=242         " Gray comments
    autocmd VimEnter * highlight LineNr ctermfg=242          " Gray line numbers
    autocmd VimEnter * highlight CursorLineNr ctermfg=255    " White current line number
    autocmd VimEnter * highlight String ctermfg=114          " Light green strings
    autocmd VimEnter * highlight Keyword ctermfg=109         " Light blue keywords
    autocmd VimEnter * highlight Function ctermfg=214        " Yellow function names
    autocmd VimEnter * highlight Identifier ctermfg=114      " Light green identifiers
    autocmd VimEnter * highlight Operator ctermfg=175        " Light magenta operators
augroup END

" ==========================
"           MacVim
" ==========================
augroup MyGUIColors
    autocmd!
    autocmd GUIEnter * set guifont=FiraMono\ Nerd\ Font\ Mono:h15
    autocmd GUIEnter * set linespace=4

    autocmd GUIEnter * set termguicolors
    autocmd GUIEnter * highlight Normal guibg=#141414 guifg=#ffffff
    autocmd GUIEnter * highlight CursorLine guibg=#2c2c2c
    autocmd GUIEnter * highlight Comment guifg=#6c6c6c
    autocmd GUIEnter * highlight LineNr guibg=#141414 guifg=#6c6c6c
    autocmd GUIEnter * highlight CursorLineNr guibg=#2c2c2c guifg=#ffffff
    autocmd GUIEnter * highlight String guifg=#8ec07c
    autocmd GUIEnter * highlight Keyword guifg=#83a598
    autocmd GUIEnter * highlight Function guifg=#fabd2f
    autocmd GUIEnter * highlight Identifier guifg=#8ec07c
    autocmd GUIEnter * highlight Operator guifg=#d3869b
augroup END

