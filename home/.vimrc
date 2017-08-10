"Vimrc

"Vundle
"------
" install Vundle: 
"   $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" install plugin at first time run vim:
"   $ vim +PluginInstall

" Vundle Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ

" Vundle basic settings
set shell=bash                       " use POSIX compatible shell

if !has('nvim')
    set nocompatible                     " be iMproved, required
endif

filetype off                         " required
set rtp+=~/.vim/bundle/Vundle.vim    " set the runtime path to include Vundle and initialize
call vundle#begin('~/.vim/bundle/')  " a path where Vundle should install plugins

" Vundle managed Vim Plugin
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" rst plugin
Plugin 'Rykka/riv.vim'
Plugin 'Rykka/InstantRst'

" C/C++ plugin
Plugin 'u1240976/cscopemaps.vim'
" Plugin 'Rip-Rip/clang_complete'
" Plugin 'hari-rangarajan/CCTree'

" python plugin
Plugin 'davidhalter/jedi-vim'

" rust syntax highlight
Plugin 'wting/rust.vim'

" tree explorer for file
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" snip
Plugin 'SirVer/ultisnips'
Plugin 'u1240976/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

" Vim Plugin's short key 

" NERDTree
" nnoremap <F5>n :NERDTreeToggle<CR>
nnoremap <F5>n :NERDTreeTabsToggle<CR>

" UltiSnip
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-m>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" jedi-vim
"let g:jedi#popup_on_dot
"let g:jedi#show_call_signatures

"Fundamental Settings
"--------------------

set encoding=utf-8    
set langmenu=zh_TW.UTF-8
language message zh_TW.UTF-8
set fileencodings=ucs-bom,utf-8,Big5,cp950,GB2312,GBK,cp932
"set fileencodings=GB2312,GBK,cp932

"User Interface
"--------------

colorscheme ron              "background color 
set nu                       "set line number
set ru
syntax on                    "syntax highlighting 
set cul                      "cursorline highlighting
hi CursorLine cterm=NONE ctermbg=8
set scrolloff=5              "the minimal screen line above/below the cursor
set laststatus=2             "status line
set wildmenu
set hlsearch                 "highlight when use / to search word
set showcmd                  "show (partial) command in status line.
set showmode

set list                     "show tab/end of line
set listchars=tab:>-         "show tab as >---

set mouse=
set tabpagemax=30

"Editing
"-------

set autoindent                  "newline in same place
set expandtab                   "help tabstop & help expandtab
set tabstop=4                   "tab=4space
set shiftwidth=4                ">>,<< for 4space
set backspace=indent,eol,start  "like normal editor backspace

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
nnoremap <C-j> :tabp<CR>
inoremap <C-j> <ESC><C-j>a
nnoremap <C-k> :tabn<CR>
inoremap <C-k> <ESC><C-k>a
nnoremap <C-t> :tabe<SPACE>

nnoremap <C-h> :tabmove -1<CR>
inoremap <C-h> <ESC><C-h>a
nnoremap <C-l> :tabmove +1<CR>
inoremap <C-l> <ESC><C-h>a

"toggle short keys
"-----------------
nnoremap <F5>p :set invpaste paste?<CR>
set pastetoggle=<F5>p
"inoremap <F5>p <ESC>:set invpaste paste?<CR>a

"Folding Shortkey
"----------------------
" nnoremap zq za
" nnoremap za zA
" open/toggle single: za, zx
" open/close all single level: zr, zm
" open/close all with nested level: zR, zM


"File Specific settings
"----------------------
"autocmd FileType html setlocal sw=2 ts=2
"autocmd FileType xml setlocal sw=2 ts=2
autocmd FileType make setlocal noexpandtab
autocmd FileType java setlocal sw=2 ts=2
