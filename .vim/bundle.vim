" Vundle Plugins

" Tutorial {
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
" }

" Vundle basic settings {
    if !has('nvim')
        set nocompatible                 " be iMproved, required
    endif

    set shell=bash                       " use POSIX compatible shell (if our default shell is fish shell)
    filetype off                         " required
" }

" Vundle start {
    set rtp+=~/.vim/bundle/Vundle.vim    " set the runtime path to include Vundle and initialize
    call vundle#begin('~/.vim/bundle/')  " a path where Vundle should install plugins

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'
" }

" Vundle plugins {
    " rst plugin
    Plugin 'Rykka/riv.vim'
    Plugin 'Rykka/InstantRst'
    
    " C/C++ plugin
    Plugin 'u1240976/cscopemaps.vim'
    " Plugin 'Rip-Rip/clang_complete'
    " Plugin 'hari-rangarajan/CCTree'
    Plugin 'majutsushi/tagbar'
    " Plugin 'vim-scripts/taglist.vim'
    " Plugin 'wesleyche/SrcExpl'
    " Plugin 'wesleyche/Trinity'
    
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
    
    Plugin 'MattesGroeger/vim-bookmarks'
" }

" Vundle end {
    " All of your Plugins must be added before the following line
    call vundle#end()                 " required

    "filetype plugin indent on
    " To ignore plugin indent changes, instead use:
    filetype plugin on                " required
" }

" Plugin's shortcut key {
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

    " Tagbar Settings
    " Open and close the tagbar separately
    nmap <F5>t :TagbarToggle<CR>

    "" Trinity
    "" Open and close all the three plugins on the same time
    "nmap <F5>q :TrinityToggleAll<CR>
    "" Open and close the srcexpl.vim separately
    "nmap <F5>w :TrinityToggleSourceExplorer<CR>
    "" Open and close the taglist.vim separately
    "nmap <F5>e :TrinityToggleTagList<CR>
    "" Open and close the NERD_tree.vim separately
    "nmap <F5>r :TrinityToggleNERDTree<CR>
    "" Back to last modified line

    " jedi-vim
    "let g:jedi#popup_on_dot
    "let g:jedi#show_call_signatures

    " vim-bookmarks
    highlight BookmarkSign ctermbg=NONE ctermfg=160
    highlight BookmarkLine ctermbg=194 ctermfg=NONE
    let g:bookmark_sign = '*'
    let g:bookmark_highlight_lines = 1
" }
