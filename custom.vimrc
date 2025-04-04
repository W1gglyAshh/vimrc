" ==========================
"     General Settings
" ==========================
set nocompatible
set encoding=utf-8
set fileencodings=utf-8
set mouse=a
set backspace=indent,eol,start
set clipboard=unnamedplus
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
syntax on

" ==========================
"        Indentation
" ==========================
set autoindent
set cindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

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
set undofile

" ==========================
"        Key Mappings
" ==========================
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>

function! EnterHandler()
    let line = getline('.')
    let col = col('.')
    
    let pairs = {'{': '}', '[': ']', '(': ')'}
    
    for [open, close] in items(pairs)
        if line[col-2] == open && line[col-1] == close
            return "\<CR>\<Esc>O"
        endif
    endfor

    return "\<CR>"
endfunction

inoremap <expr> <CR> EnterHandler()

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
