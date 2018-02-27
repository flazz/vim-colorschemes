""" Run as `vim -S jellyx-devmode.vim', or `rake devmode'

if exists('jellyx_devmode')
    finish
endif
let jellyx_devmode = 1

" Quick colorscheme switcher
function! <SID>ToggleColorscheme(...)
    if a:0 && a:1 == 'init'
        :source <sfile>:p:h/colors/jellyx.vim
    elseif g:colors_name == 'jellyx'
        :colorscheme xoria256
    elseif g:colors_name == 'xoria256'
        :colorscheme jellybeans
    else
        :source <sfile>:p:h/colors/jellyx.vim
    endif
endfunction

" highlight groups after our custom command
syntax match vimHighlight "\<HI\>" skipwhite nextgroup=vimHiBang,@vimHighlightCluster

noremap <Leader><Leader> :call <SID>ToggleColorscheme()<CR>

call <SID>ToggleColorscheme('init')
