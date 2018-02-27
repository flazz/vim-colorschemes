"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To open all files, type (in Normal mode):
"   
"   :so %
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if winheight(".") < 36
    echohl Error
    echomsg "The terminal has " . winheight(".") . " lines."
    echomsg "The terminal must have 36 lines."
    echohl Normal
    call input("Press <Enter> to finish.")
    finish
endif
if winwidth(".") < 124
    echohl Error
    echomsg "The terminal has " . winwidth(".") . " columns."
    echomsg "The terminal must have 124 columns."
    echohl Normal
    call input("Press <Enter> to finish.")
    finish
endif


set switchbuf=useopen

e statistics.R
vsplit example.py
vsplit example.c
split email.eml
sb 3
split webpage.php
sb 2
split patch.diff

sb 2
set nowrap
normal gg
sb 3
set nowrap
normal gg
sb 4
set nowrap
normal gg
sb 5
resize +2
vertical resize +1
set nowrap
normal gg
sb 6
set nowrap
resize +4
vertical resize +4
normal gg
sb 7
set nowrap
normal gg


sb 5
normal 7j3wv2E
