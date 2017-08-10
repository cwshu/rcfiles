### alias ###
function psa; ps -auxww $argv; end
function pst; ps -eLf $argv; end

function mountpretty; mount | column -t; end

function rmvimswap
    rm -f .*.sw*
    rm -f **/.*.sw*
end

function lsn; ls --color=never $argv; end

# cscope
function gen_cscopefile_c; find . -name "*.h" -o -name "*.c" > cscope.files; end
function gen_cscopefile_cpp; find . -name "*.h" -o -name "*.c" -o -name "*.cpp" > cscope.files; end
function cscope_use_local_file; cscope -Rbkq cscope.files; end
# TODO: cscope with outside directory

# checkstyle
function checkstyle; java com.puppycrawl.tools.checkstyle.Main $argv; end

# custom
function sshptt; ssh bbsu@ptt.cc; end
function todo
    cd ~/to_do/
    vim +NERDTreeTabsToggle 201601/to_do_list.rst
end

### env ###
# -U, -g, -l for variable scope
# -x: export to child process, the environment variable will be copied by fork()
set -gx PATH $PATH ~/usr/bin ~/go/bin/
set -x EDITOR vim

### rc files related ###
set -gx PYTHONSTARTUP ~/.pythonrc.py

### fish color ###
# fish_color_autosuggestion '666'  'green'
# fish_color_command afffff
# fish_color_comment red
# fish_color_cwd green
# fish_color_cwd_root red
# fish_color_error 'red'  '--bold'
# fish_color_escape cyan
# fish_color_history_current cyan
# fish_color_host '-o'  'cyan'
# fish_color_match cyan
# fish_color_normal normal
# fish_color_operator cyan
# fish_color_param '00afff'  'cyan'
# fish_color_quote brown
# fish_color_redirection normal
# fish_color_search_match --background=purple
# fish_color_status red
# fish_color_user '-o'  'green'
# fish_color_valid_path --underline

set -g fish_color_host cyan -o
set -g fish_color_user green -o
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_status red
