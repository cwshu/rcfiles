alias psa="ps -auxww"
alias mountpretty="mount | column -t"
alias greps="grep --exclude=cscope.out --color=always"

# cscope
alias gen_cscopefile_c="find . -name '*.h' -o -name '*.c' > cscope.files"
alias gen_cscopefile_cpp="find . -name '*.h' -o -name '*.c' -o -name '*.cpp' > cscope.files"
alias cscope_use_local_file="cscope -Rbkq cscope.files"

function rmvimswap () {
    rm -f .*.sw*
    rm -f **/.*.sw*
}
