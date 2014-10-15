set background=dark
highlight clear

let colors_name = "landscape"
if exists("syntax_on")
  syntax reset
endif

highlight Normal gui=none guifg=#dddddd guibg=grey0
highlight Comment term=none ctermfg=243 ctermbg=none gui=none guifg=#767676
highlight Constant term=none ctermfg=111 gui=none guifg=#87afff
highlight String term=none ctermfg=215 ctermbg=none gui=none guifg=#ffaf5f
highlight Character term=none ctermfg=214 ctermbg=none gui=none guifg=#ffaf00
highlight Number term=none ctermfg=81 ctermbg=none gui=none guifg=#5fdfff
highlight Boolean term=none ctermfg=227 ctermbg=none gui=none guifg=#ffff5f
highlight Float term=none ctermfg=85 ctermbg=none gui=none guifg=#5fffaf

highlight Identifier term=none cterm=none ctermfg=117 ctermbg=none gui=none guifg=#87dfff
highlight Function term=none ctermfg=123 ctermbg=none gui=none guifg=#5fffff

highlight Statement term=none ctermfg=76 ctermbg=none gui=none guifg=#5fdf00
highlight Conditional term=none ctermfg=166 ctermbg=none gui=none guifg=#ef7f00
highlight default link Repeat Statement
highlight default link Label Statement
highlight Operator term=none ctermfg=220 ctermbg=none gui=none guifg=#ffdf00
highlight default link Keyword Statement
highlight default link Exception Statement

highlight PreProc term=none ctermfg=39 gui=none guifg=#00afff
highlight Include term=none ctermfg=38 gui=none guifg=#00afdf
highlight Define term=none ctermfg=37 gui=none guifg=#00afaf
highlight Macro term=none ctermfg=36 gui=none guifg=#00af87
highlight PreCondit term=none ctermfg=35 gui=none guifg=#00af5f

highlight Type term=none ctermfg=207 ctermbg=none gui=none guifg=#ff9fff
highlight StorageClass term=none ctermfg=201 ctermbg=none gui=none guifg=#ff7fff
highlight Structure term=none ctermfg=200 ctermbg=none gui=none guifg=#ff7fdf
highlight Typedef term=none ctermfg=199 ctermbg=none gui=none guifg=#ff7faf

highlight Special term=none ctermfg=178 gui=none guifg=orange
highlight SpecialChar term=none ctermfg=208 gui=none guifg=orange
highlight Tag term=none ctermfg=180 gui=none guifg=orange
highlight Delimiter term=none ctermfg=181 gui=none guifg=orange
highlight SpecialComment term=none ctermfg=182 gui=none guifg=violet
highlight Debug term=none ctermfg=183 gui=none guifg=violet

highlight TabLine ctermfg=253 ctermbg=241 guifg=#dadada guibg=#606060
highlight TabLineFill ctermfg=253 ctermbg=241 guifg=#dadada guibg=#606060
highlight TabLineSel cterm=bold ctermfg=253 guifg=#dadada 
highlight Visual term=none ctermbg=241 guibg=#606060
highlight default link VisualNOS Visual
highlight Underlined term=underline ctermfg=45 gui=underline guifg=#00dfff
highlight default link URL Underlined
highlight URLCursor term=underline cterm=underline ctermfg=45 ctermbg=235 gui=underline guifg=#00dfff guibg=#262626
highlight Error term=none ctermfg=15 ctermbg=124 gui=none guifg=#ffffff guibg=#af0000
highlight WarningMsg term=none ctermfg=7 ctermbg=0 gui=none guifg=#c0c0c0 guibg=#000000
highlight Todo cterm=reverse ctermfg=185 ctermbg=16 gui=reverse guifg=#dfdf5f guibg=#000000
highlight DiffAdd term=none cterm=none ctermfg=none ctermbg=22 guifg=fg guibg=#005f00
highlight DiffChange term=none cterm=none ctermfg=none ctermbg=52 guifg=fg guibg=#5f0000
highlight DiffDelete term=none cterm=none ctermfg=none ctermbg=88 guifg=fg guibg=#870000
highlight DiffText term=none cterm=none ctermfg=none ctermbg=160 guifg=fg guibg=#df0000
highlight DiffFile term=none cterm=none ctermfg=47 ctermbg=none guifg=#00ff5f guibg=bg
highlight DiffNewFile term=none cterm=none ctermfg=199 ctermbg=none guifg=#ff00af guibg=bg
highlight default link DiffRemoved DiffDelete
highlight DiffLine term=none cterm=none ctermfg=129 ctermbg=none guifg=#af00ff guibg=bg
highlight default link DiffAdded DiffAdd
highlight default link ErrorMsg Error
highlight default link FullSpace Error
highlight Ignore ctermbg=none gui=none guifg=bg
highlight ModeMsg ctermfg=none guifg=bg guibg=bg

highlight VertSplit term=none gui=none guifg=black guibg=darkgray gui=none ctermfg=black ctermbg=darkgray cterm=none
highlight Folded term=none ctermfg=247 ctermbg=235 guifg=#9e9e9e guibg=#262626
highlight FoldColumn term=none ctermfg=247 ctermbg=235 guifg=#9e9e9e guibg=#262626
highlight SignColumn term=none ctermfg=247 ctermbg=235 guifg=#9e9e9e guibg=#262626
highlight SpecialKey term=underline ctermfg=darkgray gui=none guifg=darkgray
highlight NonText term=none ctermfg=black gui=none guifg=black
highlight StatusLineNC term=none gui=none guifg=black guibg=darkgray gui=none ctermfg=black ctermbg=darkgray cterm=none gui=none
if version >= 700
  highlight CursorLine term=none cterm=none ctermbg=235 gui=none guibg=#262626
  highlight ColorColumn term=none cterm=none ctermbg=239 gui=none guibg=#4e4e4e
  highlight CursorColumn term=none cterm=none ctermbg=235 gui=none guibg=#262626
  highlight LineNr term=none ctermfg=58 ctermbg=none guifg=#5f5f00 guibg=bg
  highlight CursorLineNr term=underline cterm=bold ctermfg=148 ctermbg=235 gui=bold guifg=#afdf00 guibg=#262626
  highlight MatchParen ctermfg=none ctermbg=240 guibg=#585858
  highlight Pmenu ctermfg=233 ctermbg=249 gui=none guifg=#121212 guibg=#b2b2b2
  highlight PmenuSel ctermfg=233 ctermbg=242 gui=none guifg=#121212 guibg=#666666
  highlight PmenuSbar ctermfg=233 ctermbg=244 gui=none guifg=#121212 guibg=#808080
  highlight PmenuThumb ctermfg=233 ctermbg=239 gui=none guifg=#121212 guibg=#4e4e4e
endif
highlight Search cterm=reverse ctermfg=220 ctermbg=234 gui=reverse guifg=#ffdf00 guibg=#1c1c1c
highlight IncSearch cterm=reverse ctermfg=136 ctermbg=236 gui=reverse guifg=#af8700 guibg=#303030

let s:urlpattern = 
      \'\%(\%(h\?ttps\?\|ftp\):\/\/\|git@github.com:\)\%('
      \.'[&:#*@~%_\-=?/.0-9A-Za-z]*'
      \.'\%(([&:#*@~%_\-=?/.0-9A-Za-z]*)\)\?'
      \.'\%({\%([&:#*@~%_\-=?/.0-9A-Za-z]*\|{[&:#*@~%_\-=?/.0-9A-Za-z]*}\)}\)\?'
      \.'\%(\[[&:#*@~%_\-=?/.0-9A-Za-z]*\]\)\?'
      \.'\)*[/0-9A-Za-z]*\%(:\d\d*\/\?\)\?'

function! s:newmatch()
  if g:landscape_highlight_url ||
   \ g:landscape_highlight_todo ||
   \ g:landscape_highlight_full_space ||
   \ g:landscape_highlight_url_filetype != {}
    if exists("b:landscape_match")
      for m in getmatches()
        if m.group == 'URL' ||
         \ m.group == 'URLCursor' ||
         \ m.group == 'Todo' ||
         \ m.group == 'FullSpace'
          call matchdelete(m.id)
        endif
      endfor
    endif
    if g:landscape_highlight_url &&
          \ (!has_key(g:landscape_highlight_url_filetype, &l:filetype) ||
          \ g:landscape_highlight_url_filetype[&l:filetype])
      call matchadd('URL', s:urlpattern, 10)
      exec "augroup MatchAddURL" . bufnr('')
        autocmd!
        autocmd BufEnter,WinEnter,BufWinEnter <buffer> call s:urlcursormatch(1)
        autocmd CursorMoved,CursorMovedI <buffer> call s:urlcursormatch(0)
        call s:urlcursormatch(1)
      augroup END
    endif
    if g:landscape_highlight_todo
      call matchadd('Todo', '\<\([tT]odo\|TODO\)\>', 10)
    endif
    if g:landscape_highlight_full_space
      call matchadd('FullSpace', '　', 10)
    endif
    let b:landscape_match = 1
  endif
endfunction

function! s:urlcursorhighlight()
  let [cbg, gbg] = ['', '']
  if &l:cursorline
    redir => out
      silent! highlight CursorLine
    redir END
    let outstrs = split(out, '\n')
    if len(outstrs)
      let [cbg, gbg] = [matchstr(outstrs[0], 'ctermbg=\S\+'), matchstr(outstrs[0], 'guibg=\S\+')]
    endif
  endif
  silent! highlight clear URLCursor
  exec 'highlight URLCursor cterm=underline ctermfg=45' cbg 'gui=underline guifg=#00dfff' gbg
endfunction

function! s:urlcursormatch(force)
  if get(b:, 'landscape_cursorline') == line('.') && !a:force
    return
  endif
  let b:landscape_cursorline = line('.')
  if has_key(b:, 'landscape_cursorline_id')
    silent! call matchdelete(b:landscape_cursorline_id)
  endif
  let b:landscape_cursorline_id = matchadd('URLCursor', '\%' . line('.') . 'l' . s:urlpattern, 20)
endfunction

augroup LandscapeMatch
  autocmd!
  autocmd BufNew,WinEnter,FileType,BufReadPost * call s:newmatch()
  autocmd FileType,ColorScheme,BufEnter * call s:urlcursorhighlight()
augroup END

highlight SpellBad term=none cterm=none ctermbg=52 gui=none guibg=#5f0000
highlight default link SpellCap SpellBad
highlight default link SpellLocal SpellBad
highlight default link SpellRare SpellBad

highlight default link vimCmplxRepeat Normal

" for vimshell, vimfiler, unite.vim
highlight default link Command Function
highlight default link GitCommand Constant
highlight default link Arguments Type
highlight default link PdfHtml Function
highlight default link Archive Special
highlight default link Image Type
highlight default link Multimedia SpecialComment
highlight default link System Comment
highlight default link Text Constant
highlight default link Link Constant
highlight default link Exe Statement
highlight default link Prompt PreCondit
highlight default link Icon LineNr
highlight Time ctermfg=141 ctermbg=none gui=none guifg=#af87ff
highlight Date ctermfg=140 ctermbg=none gui=none guifg=#af87df
highlight default link DateToday Special
highlight default link DateWeek Identifier
highlight default link DateOld Comment
highlight default link Path Preproc
highlight default link Marked StorageClass
highlight default link Title Identifier

" Conceal
" Cursor
" CursorIM
" Directory
" ModeMsg
" MoreMsg
" Question
" StatusLine
" WildMenu
