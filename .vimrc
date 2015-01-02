"Vimrc

"Vundle
"------
set shell=bash                       " use POSIX compatible shell

set nocompatible                     " be iMproved, required
filetype off                         " required
set rtp+=~/.vim/bundle/Vundle.vim    " set the runtime path to include Vundle and initialize
call vundle#begin('~/.vim/bundle/')  " a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" rst plugin
Plugin 'Rykka/riv.vim'

" C/C++ plugin
Plugin 'u1240976/cscopemaps.vim'
" Plugin 'Rip-Rip/clang_complete'
" Plugin 'hari-rangarajan/CCTree'

" python plugin
Plugin 'davidhalter/jedi-vim'

" tree explorer for file
Plugin 'scrooloose/nerdtree'

" snip
Plugin 'SirVer/ultisnips'
Plugin 'u1240976/vim-snippets'

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

" plugin short key 
nmap <F5>n :NERDTreeToggle<CR>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-m>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"Fundamental Settings
"--------------------

set encoding=utf-8    
set langmenu=zh_TW.UTF-8
language message zh_TW.UTF-8
set fileencodings=ucs-bom,utf-8,Big5,cp950,GB2312,GBK

"User Interface
"--------------

colorscheme ron              "background color 
set nu                       "set line number
set ru
syntax on                    "syntax highlighting 
set cul                      "cursorline highlighting
hi CursorLine cterm=NONE ctermbg=0
set scrolloff=5              "the minimal screen line above/below the cursor
set laststatus=2             "status line
set wildmenu
set hlsearch                 "highlight when use / to search word
set showcmd                  "show (partial) command in status line.
set showmode
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

"File Specific settings
"----------------------
"autocmd FileType html setlocal sw=2 ts=2
"autocmd FileType xml setlocal sw=2 ts=2
autocmd FileType make setlocal noexpandtab

" toggle short keys
nnoremap <F5>p :set invpaste paste?<CR>
set pastetoggle=<F5>p
"inoremap <F5>p <ESC>:set invpaste paste?<CR>a
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
