"Vimrc

"Vundle
"------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" a path where Vundle should install plugins
call vundle#begin('~/.vim/bundle/') 

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" rst plugin
Plugin 'Rykka/riv.vim'

" C/C++ plugin
Plugin 'steffanc/cscopemaps.vim'
" Plugin 'Rip-Rip/clang_complete'
Plugin 'hari-rangarajan/CCTree'

" python plugin
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ

" let g:clang_complete_copen = 1
" let g:clang_use_library = 1
" let g:clang_library_path = "/usr/lib/llvm-3.2/lib/"

"Fundamental Settings
"--------------------

set encoding=utf-8    
set langmenu=zh_TW.UTF-8
language message zh_TW.UTF-8
set fileencodings=ucs-bom,utf-8,Big5,cp950,GB2312

"User Interface
"--------------

colorscheme ron              "background color 
set nu                       "set line number
set ru
syntax on                    "syntax highlighting 
set cul                      "cursorline highlighting
set scrolloff=5              "the minimal screen line above/below the cursor
set laststatus=2             "狀態列
set wildmenu
set hlsearch                 "highlight when use / to search word
set showcmd
set list                     "show tab/end of line
set listchars=tab:>-         "show tab as >---

"Editing
"-------

set autoindent               "newline in same place
set expandtab                "help tabstop & help expandtab
set tabstop=4                "tab=4space
set shiftwidth=4             ">>,<< for 4space
set bs=2                     "open the backspace

"Tab Page
"--------
" tab page label
hi TabLine     ctermfg=black ctermbg=white    
hi TabLineSel  ctermfg=white ctermbg=black    
hi TabLineFill ctermfg=white ctermbg=blue     
hi VIMlogo     ctermfg=white ctermbg=blue

" tab page shortcut
"set ctrl+j to front/left tab page in normal/insert mode
"set ctrl+k to next/right tab page in normal/insert mode
nmap <C-j> :tabp<CR>
imap <C-j> <ESC><C-j>a
nmap <C-k> :tabn<CR>
imap <C-k> <ESC><C-k>a
nmap <C-t> :tabe<SPACE>

nmap <C-h> :tabmove -1<CR>
imap <C-h> <ESC><C-h>a
nmap <C-l> :tabmove +1<CR>
imap <C-l> <ESC><C-h>a

"Misc
"----
" 半透明 gvim in Windows -- vimtweak.dll

" let s:alpha = 200
" call libcallnr("vimtweak.dll", "SetAlpha", s:alpha)
" 
" function! Alpha200()
"     let s:alpha = 200
"     call libcallnr("vimtweak.dll", "SetAlpha", s:alpha)
"     echo 'alpha ='s:alpha
" endfunction
" function! Alpha255()
"     let s:alpha = 255
"     call libcallnr("vimtweak.dll", "SetAlpha", s:alpha)
"     echo 'alpha ='s:alpha
" endfunction
" nmap <F3> :call Alpha200()<CR>
" nmap <F4> :call Alpha255()<CR>

" function! AlphaIncrease()
"     if s:alpha <= 250
"         let s:alpha += 5
"     endif
"     call libcallnr("vimtweak.dll", "SetAlpha", s:alpha)
"     echo 'alpha ='s:alpha
" endfunction
" function! AlphaDecrease()
"     if s:alpha >= 5
"         let s:alpha -= 5
"     endif
"     call libcallnr("vimtweak.dll", "SetAlpha", s:alpha)
"     echo 'alpha ='s:alpha
" endfunction
" nmap <M-=> :call AlphaIncrease()<CR>
" nmap <M--> :call AlphaDecrease()<CR>
