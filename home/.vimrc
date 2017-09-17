" Vimrc

" Vundle Plugins {
    if filereadable(expand('~/.vim/bundle.vim'))
        source ~/.vim/bundle.vim
    endif
" }

" Fundamental Settings {
    set encoding=utf-8    
    set langmenu=zh_TW.UTF-8
    language message zh_TW.UTF-8
    set fileencodings=ucs-bom,utf-8,Big5,cp950,GB2312,GBK,cp932
    "set fileencodings=GB2312,GBK,cp932
" }

" User Interface {
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
" }

" Editing {
    set autoindent                  "newline in same place
    set expandtab                   "help tabstop & help expandtab
    set tabstop=4                   "tab=4space
    set shiftwidth=4                ">>,<< for 4space
    set backspace=indent,eol,start  "like normal editor backspace
" }

" Tab Page {
    " tab page label color {
        hi TabLine     ctermfg=black ctermbg=white    
        hi TabLineSel  ctermfg=white ctermbg=black    
        hi TabLineFill ctermfg=white ctermbg=blue     
        hi VIMlogo     ctermfg=white ctermbg=blue
    " }

    " tab page shortcut keys {
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
    " }
" }

" Other shortcut keys {
    " toggle mode {
        "set paste 
        nnoremap <F5>p :set invpaste paste?<CR>
        set pastetoggle=<F5>p
        "inoremap <F5>p <ESC>:set invpaste paste?<CR>a
    " }

    " folding {
        "nnoremap zq za
        "nnoremap za zA
        "open/toggle single: za, zx
        "open/close all single level: zr, zm
        "open/close all with nested level: zR, zM
    " }
" }

" File Specific settings {
    "autocmd FileType html setlocal sw=2 ts=2
    "autocmd FileType xml setlocal sw=2 ts=2
    autocmd FileType make setlocal noexpandtab
    autocmd FileType java setlocal sw=2 ts=2
" }
