" Maintainer:	Pan Shizhu <dicpan@hotmail.com>
" Last Change:	17 November 2004
" Version:	2.82
" URL:		http://vim.sourceforge.net/scripts/script.php?script_id=760
"
"	Please prepend [VIM] in the title when writing e-mail to me, or it will
"	be automatically treated as spam and removed. 
"
"	See the help document for all details, the help document will be
"	installed after the script has been sourced once, do not open the
"	script when you source it for the first time.
"

" Initializations: {{{1
"
function! s:init_option(var, value)
  if !exists("g:psc_".a:var)
    execute "let s:".a:var." = ".a:value
  else
    let s:{a:var} = g:psc_{a:var}
  endif
endfunction
command! -nargs=+ InitOpt call s:init_option(<f-args>)

function! s:multi_hi(setting, ...)
  let l:idx = a:0
  while l:idx > 0
    let l:hlgroup = a:{l:idx}
    execute "highlight ".l:hlgroup." ".a:setting
    let l:idx = l:idx - 1
  endwhile
endfunction
command! -nargs=+ MultiHi call s:multi_hi(<f-args>)

InitOpt style 'cool'
InitOpt inversed_todo 0
InitOpt use_default_for_cterm 0
InitOpt statement_different_from_type 0
if s:style == 'warm'
  InitOpt fontface 'mixed'
else
  InitOpt fontface 'plain'
endif

if !has("gui_running")
  call s:init_option("cterm_style", "'".s:style."'")

  " Forces 'cool' style when gui is not present Since the 'warm' style for
  " terminal isn't available now, and probably never will be.
  if s:cterm_style=='warm' | let s:cterm_style = 'cool'
  endif
  if s:use_default_for_cterm==1 | let s:cterm_style = 'default'
  elseif s:use_default_for_cterm==2 | let s:cterm_style = 'defdark'
  endif
endif


InitOpt other_style 0

if has("gui_running")
  if s:style=='warm' || s:style=='default'
    set background=light
  elseif s:style=='cool' || s:style=='defdark'
    set background=dark
  else | let s:other_style = 1
  endif
else
  if s:cterm_style=='cool' || s:cterm_style=='defdark'
    set background=dark
  elseif s:cterm_style=='default'
    set background=light
  else | let s:other_style = 1
  endif
endif


highlight clear

if exists("syntax_on")
  syntax reset
endif

let s:color_name = expand("<sfile>:t:r")

if s:other_style==0 | let g:colors_name = s:color_name
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light
  " Go from console version to gui, the color scheme should be sourced again
  execute "autocmd TermChanged * if g:colors_name == '".s:color_name."' | "
	\."colo ".s:color_name." | endif"
else
  execute "runtime colors/".s:style.".vim"
endif

" Command to go different schemes easier.
execute "command! -nargs=1 Colo if '".s:color_name."'!=\"<args>\" | "
	\'let g:psc_style = "<args>"| endif | colo '.s:color_name

" Give control to 'reloaded' scheme if possible
if s:style == 'reloaded'
  finish
endif

" }}}1

" Relevant Help: 
" :h highlight-groups
" :h psc-cterm-color-table
" :ru syntax/hitest.vim
"
" Hardcoded Colors Comment:
" #aabbcc = Red aa, Green bb, Blue cc
" we must use hard-coded colours to get more 'tender' colours
"


" GUI:
"
" I don't want to abuse folding, but here folding is used to avoid confusion. 
if s:style=='warm' 
  " Warm style for gui here {{{2
  " LIGHT COLOR DEFINE START

  highlight Normal		guifg=#000000	guibg=#e0e0e0
  highlight Search		guifg=#902000	guibg=#f8f8f8
  highlight Visual		guifg=fg	guibg=#a6caf0
  highlight Cursor		guifg=#f0f0f0	guibg=#008000
  " The idea of CursorIM is pretty good, however, the feature is still buggy
  " in the current version (Vim 6.3). 
  " The following line will be kept commented until the bug fixed.
  "
  " highlight CursorIM		guifg=#f0f0f0	guibg=#800080
  highlight Special		guifg=#907000	guibg=bg
  highlight Comment		guifg=#505800	guibg=bg
  highlight Number		guifg=#907000	guibg=bg
  highlight Constant		guifg=#007068	guibg=bg
  highlight StatusLine		guifg=fg	guibg=#a6caf0
  highlight LineNr		guifg=#686868	guibg=bg
  highlight Question		guifg=fg	guibg=#d0d090
  highlight PreProc		guifg=#009030	guibg=bg
  if s:statement_different_from_type==1
    highlight Statement		guifg=#4020a0	guibg=bg
  else
    highlight Statement		guifg=#2060a8	guibg=bg
  endif
  highlight Type		guifg=#0850a0	guibg=bg
  if s:inversed_todo==1
    highlight Todo		guifg=#e0e090	guibg=#000080
  else
    highlight Todo		guifg=#800000	guibg=#e0e090
  endif
  " NOTE THIS IS IN THE WARM SECTION
  highlight Error		guifg=#c03000	guibg=bg
  highlight Identifier		guifg=#a030a0	guibg=bg
  highlight ModeMsg		guifg=fg	guibg=#b0b0e0
  highlight VisualNOS		guifg=fg	guibg=#b0b0e0
  highlight SpecialKey		guifg=#1050a0	guibg=bg
  highlight NonText		guifg=#002090	guibg=#d0d0d0
  highlight Directory		guifg=#a030a0	guibg=bg
  highlight ErrorMsg		guifg=fg	guibg=#f0b090
  highlight MoreMsg		guifg=#489000	guibg=bg
  highlight Title		guifg=#a030a0	guibg=bg
  highlight WarningMsg		guifg=#b02000	guibg=bg
  highlight WildMenu		guifg=fg	guibg=#d0d090
  highlight Folded		guifg=fg	guibg=#b0e0b0
  highlight FoldColumn		guifg=fg	guibg=#90e090
  highlight DiffAdd		guifg=fg	guibg=#b0b0e0
  highlight DiffChange		guifg=fg	guibg=#e0b0e0
  highlight DiffDelete		guifg=#002090	guibg=#d0d0d0
  highlight DiffText		guifg=fg	guibg=#c0e080
  highlight SignColumn		guifg=fg	guibg=#90e090
  highlight IncSearch		guifg=#f0f0f0	guibg=#806060
  highlight StatusLineNC	guifg=fg	guibg=#c0c0c0
  highlight VertSplit		guifg=fg	guibg=#c0c0c0
  highlight Underlined		guifg=#6a5acd	guibg=bg	gui=underline
  highlight Ignore		guifg=bg	guibg=bg

  " LIGHT COLOR DEFINE END
  " }}}2
elseif s:style=='cool' 
  " Cool style for gui here {{{2
  " DARK COLOR DEFINE START

  highlight Normal		guifg=#d0d0d0	guibg=#202020
  highlight Comment		guifg=#d0d090	guibg=bg
  highlight Constant		guifg=#80c0e0	guibg=bg
  highlight Number		guifg=#e0c060	guibg=bg
  highlight Identifier		guifg=#f0c0f0	guibg=bg
  if s:statement_different_from_type==1
    highlight Statement		guifg=#98a8f0	guibg=bg
  else
    highlight Statement		guifg=#c0d8f8	guibg=bg
  endif
  highlight PreProc		guifg=#60f080	guibg=bg
  highlight Type		guifg=#b0d0f0	guibg=bg
  highlight Special		guifg=#e0c060	guibg=bg
  highlight Error		guifg=#f08060	guibg=bg
  if s:inversed_todo==1
    highlight Todo		guifg=#d0d090	guibg=#000080
  else
    highlight Todo		guifg=#800000	guibg=#d0d090
  endif
  highlight Search		guifg=#e0e0e0	guibg=#800000
  highlight Visual		guifg=#000000	guibg=#a6caf0
  highlight Cursor		guifg=#000000	guibg=#00f000
  " NOTE THIS IS IN THE COOL SECTION
  " highlight CursorIM		guifg=#000000	guibg=#f000f0
  highlight StatusLine		guifg=#000000	guibg=#a6caf0
  highlight LineNr		guifg=#b0b0b0	guibg=bg
  highlight Question		guifg=#000000	guibg=#d0d090
  highlight ModeMsg		guifg=fg	guibg=#000080
  highlight VisualNOS		guifg=fg	guibg=#000080
  highlight SpecialKey		guifg=#b0d0f0	guibg=bg
  highlight NonText		guifg=#6080f0	guibg=#101010
  highlight Directory		guifg=#80c0e0	guibg=bg
  highlight ErrorMsg		guifg=#d0d090	guibg=#800000
  highlight MoreMsg		guifg=#c0e080	guibg=bg
  highlight Title		guifg=#f0c0f0	guibg=bg
  highlight WarningMsg		guifg=#f08060	guibg=bg
  highlight WildMenu		guifg=#000000	guibg=#d0d090
  highlight Folded		guifg=#d0d0d0	guibg=#004000
  highlight FoldColumn		guifg=#e0e0e0	guibg=#008000
  highlight DiffAdd		guifg=fg	guibg=#000080
  highlight DiffChange		guifg=fg	guibg=#800080
  highlight DiffDelete		guifg=#6080f0	guibg=#202020
  highlight DiffText		guifg=#000000	guibg=#c0e080
  highlight SignColumn		guifg=#e0e0e0	guibg=#008000
  highlight IncSearch		guifg=#000000	guibg=#d0d0d0
  highlight StatusLineNC	guifg=#000000	guibg=#c0c0c0
  highlight VertSplit		guifg=#000000	guibg=#c0c0c0
  highlight Underlined		guifg=#80a0ff	guibg=bg	gui=underline 
  highlight Ignore		guifg=#000000	guibg=bg

  " DARK COLOR DEFINE END
  " }}}2
elseif s:style=='defdark'
  highlight Normal		guifg=#f0f0f0	guibg=#000000
endif

" Take NT gui for example, If you want to use a console font such as
" Lucida_Console with font size larger than 14, the font looks already thick,
" and the bold font for that will be too thick, you may not want it be bolded.
" The following code does this.
"
" All of the bold font may be disabled, since continuously switching between
" bold and plain font hurts consistency and will inevitably fatigue your eye!

" Maximum 20 parameters for vim script function
"
MultiHi gui=NONE ModeMsg Search Cursor Special Comment Constant Number LineNr Question PreProc Statement Type Todo Error Identifier Normal

MultiHi gui=NONE VisualNOS SpecialKey NonText Directory ErrorMsg MoreMsg Title WarningMsg WildMenu Folded FoldColumn DiffAdd DiffChange DiffDelete DiffText SignColumn

" For reversed stuffs
MultiHi gui=NONE IncSearch StatusLine StatusLineNC VertSplit Visual

if s:style=="cool" || s:style=="warm"
  if s:fontface=="mixed"
    MultiHi gui=bold IncSearch StatusLine StatusLineNC VertSplit Visual
  endif
else
  if s:fontface=="mixed"
    hi StatusLine gui=bold,reverse
  else
    hi StatusLine gui=reverse
  endif
  MultiHi gui=reverse IncSearch StatusLineNC VertSplit Visual
endif

" Enable the bold style
if s:fontface=="mixed"
  MultiHi gui=bold Question DiffText Statement Type MoreMsg ModeMsg NonText Title VisualNOS DiffDelete
endif




" Color Term:

" It's not quite possible to support 'cool' and 'warm' simultaneously, since
" we cannot expect a terminal to have more than 16 color names. 
"

" I assume Vim will never go to cterm mode when has("gui_running") returns 1,
" Please enlighten me if I am wrong.
"
if !has('gui_running')
  " cterm settings {{{1
  if s:cterm_style=='cool'

    highlight Normal	 ctermfg=LightGrey  ctermbg=Black
    highlight Search	 ctermfg=White	    ctermbg=DarkRed
    highlight Visual	 ctermfg=Black	    ctermbg=DarkCyan
    highlight Cursor	 ctermfg=Black	    ctermbg=Green
    highlight Special	 ctermfg=Yellow	    ctermbg=Black
    highlight Comment	 ctermfg=DarkYellow ctermbg=Black
    highlight Constant	 ctermfg=Blue	    ctermbg=Black
    highlight Number	 ctermfg=Yellow	    ctermbg=Black
    highlight StatusLine ctermfg=Black	    ctermbg=DarkCyan
    highlight LineNr	 ctermfg=DarkGrey   ctermbg=Black
    highlight Question	 ctermfg=Black	    ctermbg=DarkYellow
    highlight PreProc	 ctermfg=Green	    ctermbg=Black
    highlight Statement	 ctermfg=Cyan	    ctermbg=Black
    highlight Type	 ctermfg=Cyan	    ctermbg=Black
    if s:inversed_todo==0
        highlight Todo	 ctermfg=DarkRed    ctermbg=DarkYellow
    else
        highlight Todo	 ctermfg=DarkYellow ctermbg=DarkBlue
    endif
    highlight Error	 ctermfg=Red	    ctermbg=Black
    highlight Identifier ctermfg=Magenta    ctermbg=Black
    highlight Folded	 ctermfg=White	    ctermbg=DarkGreen
    highlight ModeMsg	 ctermfg=Grey	    ctermbg=DarkBlue
    highlight VisualNOS	 ctermfg=Grey	    ctermbg=DarkBlue
    highlight SpecialKey ctermfg=Cyan	    ctermbg=Black
    highlight NonText	 ctermfg=Blue	    ctermbg=Black
    highlight Directory	 ctermfg=Blue	    ctermbg=Black
    highlight ErrorMsg	 ctermfg=DarkYellow ctermbg=DarkRed
    highlight MoreMsg	 ctermfg=Green	    ctermbg=Black
    highlight Title	 ctermfg=Magenta    ctermbg=Black
    highlight WarningMsg ctermfg=Red	    ctermbg=Black
    highlight WildMenu	 ctermfg=Black	    ctermbg=DarkYellow
    highlight FoldColumn ctermfg=White	    ctermbg=DarkGreen
    highlight SignColumn ctermfg=White	    ctermbg=DarkGreen
    highlight DiffText	 ctermfg=Black	    ctermbg=DarkYellow
    highlight DiffDelete ctermfg=Blue	    ctermbg=Black

    if &t_Co==8
      " 8 colour terminal support, this assumes 16 colour is available through
      " setting the 'bold' attribute, will get bright foreground colour.
      " However, the bright background color is not available for 8-color terms.
      "
      " You can manually set t_Co=16 in your .vimrc to see if your terminal
      " supports 16 colours, 
      MultiHi cterm=none DiffText Visual Cursor Comment Todo StatusLine Question DiffChange ModeMsg VisualNOS ErrorMsg WildMenu DiffAdd Folded DiffDelete Normal
      MultiHi cterm=bold Search Special Constant Number LineNr PreProc Statement Type Error Identifier SpecialKey NonText MoreMsg Title WarningMsg FoldColumn SignColumn Directory DiffDelete

    else
      " Background > 7 is only available with 16 or more colors

      " Only use the s:fontface option when there is 16-colour(or more)
      " terminal support

      MultiHi cterm=none WarningMsg Search Visual Cursor Special Comment Constant Number LineNr PreProc Todo Error Identifier Folded SpecialKey Directory ErrorMsg Normal
      MultiHi cterm=none WildMenu FoldColumn SignColumn DiffAdd DiffChange Question StatusLine DiffText
      MultiHi cterm=reverse IncSearch StatusLineNC VertSplit

      " Well, well, bold font with color 0-7 is not possible.
      " So, the Question, StatusLine, DiffText cannot act as expected.

      call s:multi_hi("cterm=".((s:fontface=="plain") ? "none" : "bold"), "Statement", "Type", "MoreMsg", "ModeMsg", "NonText", "Title", "VisualNOS", "DiffDelete")

    endif

  elseif s:cterm_style=='defdark'
    highlight Normal	 ctermfg=LightGrey  ctermbg=Black
  endif
  " }}}1
endif


" Term:
" For console with only 4 colours (term, not cterm), we'll use the default.
" ...
" The default colorscheme is good enough for terms with no more than 4 colours
"


" Links:
"
if (s:style=='cool') || (s:style == 'warm')
  " COLOR LINKS DEFINE START

  highlight link		String		Constant
  " Character must be different from strings because in many languages
  " (especially C, C++) a 'char' variable is scalar while 'string' is pointer,
  " mistaken a 'char' for a 'string' will cause disaster!
  highlight link		Character	Number
  highlight link		SpecialChar	LineNr
  highlight link		Tag		Identifier
  " The following are not standard hi links, 
  " these are used by DrChip
  highlight link		Warning		MoreMsg
  highlight link		Notice		Constant
  " these are used by Calendar
  highlight link		CalToday	PreProc
  " these are used by TagList
  highlight link		MyTagListTagName	IncSearch
  highlight link		MyTagListTagScope	Constant

  " COLOR LINKS DEFINE END
endif


" Clean:
"
delcommand InitOpt
delcommand MultiHi

" vim:et:nosta:sw=2:ts=8:
" vim600:fdm=marker:fdl=1:
