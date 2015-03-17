# if the breakpoint you set doesn't exist(function name not exist), still setting it and waiting for loading new symbol.
# using when program has exec() to run new program, and set breakpoint to exec-after program.
set breakpoint pending on
# when process forks, gdb trace child instead of parent.
set follow-fork-mode child

define c_bt 
    # continue to next breakpoint, then print backtrace.
    c
    bt
end
