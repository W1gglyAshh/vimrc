hi clear

if exists("syntax_on")
  syntax reset
endif

set background=dark

hi Statement guifg=#9cf0d1 ctermfg=15
hi Keyword guifg=#9cf0d1 ctermfg=15
hi Conditional guifg=#9cf0d1 ctermfg=15
hi Repeat guifg=#9cf0d1 ctermfg=15
hi Operator guifg=#9cf0d1 ctermfg=15
hi PreProc guifg=#9cf0d1 ctermfg=15

hi Function guifg=#ebc554 gui=bold ctermfg=15

hi String guifg=#e670da ctermfg=15
hi Character guifg=#e670da ctermfg=15

hi Type guifg=#64ade8 ctermfg=15
hi Structure guifg=#64ade8 ctermfg=15

hi Comment guifg=#878787 ctermfg=15

hi Normal guibg=#1a1a1a guifg=#f0f0f0 ctermfg=15
hi LineNr ctermfg=238 guifg=#585858
hi CursorLine guibg=#303030 cterm=NONE gui=NONE
hi CursorLineNr ctermfg=252 guifg=#d0d0d0 cterm=NONE gui=NONE
hi Visual guibg=#404040
