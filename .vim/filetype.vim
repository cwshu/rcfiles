" ref:
"   - Basic: http://vim.wikia.com/wiki/Filetype.vim
"   - include guard: http://stackoverflow.com/a/25975659
"   - autocmd group: http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
"   - autocmd group: [vim] :help autocmd-groups
"
" event - BufNewFile, BufRead
"   BufNewFile : new file is created
"   BufRead    : existing file is read.

" include guard, like #ifndef in C/C++ header file
if exists("did_load_filetypes")
    finish
endif

" augroup, au! for preventing multiple definition of same autocmd, by sourcing config file multiple times
augroup filetypedetect
    autocmd!
    autocmd BufNewFile,BufRead *.gdbcmd setf gdb
    " fish script, from: https://github.com/aliva/vim-fish/blob/master/ftdetect/fish.vim
    autocmd BufNewFile,BufRead *.fish setf fish
    autocmd BufNewFile,BufRead,StdinReadPost *
        \ if getline(1) =~ '^#!.*\Wfish\s*$' |
        \   set ft=fish |
        \ endif
augroup END
