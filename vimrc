execute pathogen#infect()
filetype off
syntax on
call pathogen#helptags()
filetype plugin indent on

"set nocompatible
set modelines=0
colorscheme seoul256

"remap CAPS_LOCK to ESC
"au VimEnter * execute 'silent !setxkbmap -option "caps:ctrl_modifier"' 
au VimEnter * execute 'silent !xmodmap -e "clear Lock" -e "keycode 0x42 = Escape"' 
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock' 
"/remapCAPS_LOCK to ESC

set encoding=utf8
set relativenumber " relative line numbers for fast navigation
set number " absolute number
set cursorline
set virtualedit=onemore "!!!! solves problem of nonputting cursor after the last symbol
set ruler " show current line
" search stuff
set hlsearch " search highlight :nohls to turn off
set incsearch " incremental search ( like in modern browsers )
set ignorecase
set smartcase " try to be smart
set magic " regexp
set ai si " autoindent smartindent
set list " show tabs and newline as unicodes
set listchars=tab:▸\ ,eol:↷
map <leader>l :set list!<CR>
set iskeyword-=_ " '_' word separator for underscore_case 
"( commented out for breaking syntax )
set clipboard+=unnamed "fixes the problem of truncated paste from system clipboard, shares vim's with the system:
"set expandtab " expand tabs to spaces
set smarttab " try to be smart
set shiftwidth=2
set tabstop=2

syntax enable
"hi Comment ctermfg=cyan
"hi Special ctermfg=yellow
"hi Identifier ctermfg=blue
"hi Statement ctermfg=green
"hi Special ctermfg=green
"hi Comment ctermfg=darkblue " white theme
"hi String ctermfg=red
"hi Constant ctermfg=darkred
"hi LineNR ctermfg=yellow
"hi CursorLineNR ctermfg=red


:set pastetoggle=<F2>
"if has("autocmd")
"au InsertEnter * silent execute "!sed -i.bak -e 's/TERMINAL_CURSOR_SHAPE_BLOCK/TERMINAL_CURSOR_SHAPE_IBEAM/' ~/.config/xfce4/terminal/terminalrc"                                                                                          
"au InsertLeave * silent execute "!sed -i.bak -e 's/TERMINAL_CURSOR_SHAPE_IBEAM/TERMINAL_CURSOR_SHAPE_BLOCK/' ~/.config/xfce4/terminal/terminalrc"                                                                                          
"au VimLeave * silent execute "!sed -i.bak -e 's/TERMINAL_CURSOR_SHAPE_IBEAM/TERMINAL_CURSOR_SHAPE_BLOCK/' ~/.config/xfce4/terminal/terminalrc"  
"endif

map <F4>  <esc>:call SWITCHFOLD()<cr>
function SWITCHFOLD()
    if &foldmethod=="marker"
        set foldmethod=syntax
        return
    endif
    if &foldmethod=="syntax"
        set foldmethod=indent
        return
    endif
    if &foldmethod=="indent"
        set foldmethod=manual
        return
    endif
    if &foldmethod=="manual"
        set foldmethod=marker
        return
    endif
endfunction


" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2
