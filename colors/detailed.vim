" Source repo: http://github.com/rking/vim-detailed
"
" So many 256-color schemes merely shift the palette around, displaying only 8
" colors (even though they're a *different* set of 8 colors than default).
"
" This scheme is more detailed than that.
"
" Your eyes will learn to pick up on subtler patterns without requiring as
" much from your conscious mind.  Instead of the goal being merely looking
" cool, the goal is to maximize info bandwidth from the computer to the brain.
" The regexes, for example, are much easier to pick out. The overall feel of a
" given file becomes much more intuitively recognizeable (you'll know you're
" in foo.rb, not bar.rb, without having to read any text). Certain bits will
" "pop" into being the right colors, such as the difference between
" "RUBY_VERISON" and "RUBY_VERSION", or # encoding: utf-8
"
" ## 256 Color Requirement
"
" If you aren't getting 256 colors, you aren't getting detailed.vim.
" Typically, you'll have to make sure your `$TERM` variable is set right. This
" can get un-set by some programs, such as tmux. So you can force it to
" something like:
"
"     export TERM=screen-256color
"     # or:
"     export TERM=xterm-256color
"
" If these are unavailable on the target system, you might have to place a
" terminfo file in `~/.terminfo/`  -or- you can be totally gross and force it
" with `:set &t_Co=256` in vim. But don't be gross. It's uncouth.
"
" ## Color Choices
"
" As a historical note, some small effort was taken to be similar to the
" default vim syntax highlighting where it makes sense. That is, "def" is
" magenta in the default, so vim-detailed makes it a shade of purple (and uses
" different shades for all the other magenta things from the default
" colorscheme). A person could modify this idea and do better:
"
" - Greens - The 256 color palette itself is heavy on green variants. If you
"   used more greens, you'd be able to group similar-but-different pieces
"   together more closely.
" - Coolness - If you adjusted the color choices for æﬆhetic value rather than
"   utilitarian, you could get a more stylish theme without sacrificing much
"   detail.
"
" ## Download
"
"  If using Pathogen,
"
"      cd ~/.vim/bundle && git clone https://github.com/rking/vim-detailed
"
"  If using no vim plugin manager:
"
"      mkdir -p ~/.vim/colors/ && cd $_ && wget https://raw.github.com/rking/vim-detailed/master/colors/detailed.vim
"
" ## Setup
"
" In your ~/.vimrc (or ~/.vim/plugin/colorscheme.vim if you like to organize):
"
"     colo detailed
"
" This enables it globally. If you want to just do it for a trial, as long as
" you have done one of the steps in the "Download" section, above, you can do:
"
"     vim foo.rb +colo\ detailed
"
" Or, from within vim:
"
"     :colo detailed

let colors_name = 'detailed'

" Prevent any screwy setting from causing errors:
let s:save_cpo = &cpo | set cpo&vim

" Turn on moar syntaks!
let ruby_operators = 1

" If you don't have this, rails.vim will zap the matchers when it resets
" syntax for its own additions:
au Syntax * call s:fatpacked_rainbow_parens()

au Syntax ruby call s:detailed_syntax_addtions()

" Show detailed syntax stack
nmap <Leader>dets :call <SID>SynStack()<CR>
fun! <SID>SynStack()
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfun

" Color Palette {{{

" Boring ctermfg ⇒ guifg map {{{
let s:cterm_gui_map = {
  \0: '000000',
  \1: 'ff0000',
  \2: '00ff00',
  \3: 'ffff00',
  \4: '0000ff',
  \5: 'ff00ff',
  \6: '00ffff',
  \16: '000000',
  \17: '00005f',
  \18: '000087',
  \19: '0000af',
  \20: '0000d7',
  \21: '0000ff',
  \22: '005f00',
  \23: '005f5f',
  \24: '005f87',
  \25: '005faf',
  \26: '005fd7',
  \27: '005fff',
  \28: '008700',
  \29: '00875f',
  \30: '008787',
  \31: '0087af',
  \32: '0087d7',
  \33: '0087ff',
  \34: '00af00',
  \35: '00af5f',
  \36: '00af87',
  \37: '00afaf',
  \38: '00afd7',
  \39: '00afff',
  \40: '00d700',
  \41: '00d75f',
  \42: '00d787',
  \43: '00d7af',
  \44: '00d7d7',
  \45: '00d7ff',
  \46: '00ff00',
  \47: '00ff5f',
  \48: '00ff87',
  \49: '00ffaf',
  \50: '00ffd7',
  \51: '00ffff',
  \52: '5f0000',
  \53: '5f005f',
  \54: '5f0087',
  \55: '5f00af',
  \56: '5f00d7',
  \57: '5f00ff',
  \58: '5f5f00',
  \59: '5f5f5f',
  \60: '5f5f87',
  \61: '5f5faf',
  \62: '5f5fd7',
  \63: '5f5fff',
  \64: '5f8700',
  \65: '5f875f',
  \66: '5f8787',
  \67: '5f87af',
  \68: '5f87d7',
  \69: '5f87ff',
  \70: '5faf00',
  \71: '5faf5f',
  \72: '5faf87',
  \73: '5fafaf',
  \74: '5fafd7',
  \75: '5fafff',
  \76: '5fd700',
  \77: '5fd75f',
  \78: '5fd787',
  \79: '5fd7af',
  \80: '5fd7d7',
  \81: '5fd7ff',
  \82: '5fff00',
  \83: '5fff5f',
  \84: '5fff87',
  \85: '5fffaf',
  \86: '5fffd7',
  \87: '5fffff',
  \88: '870000',
  \89: '87005f',
  \90: '870087',
  \91: '8700af',
  \92: '8700d7',
  \93: '8700ff',
  \94: '875f00',
  \95: '875f5f',
  \96: '875f87',
  \97: '875faf',
  \98: '875fd7',
  \99: '875fff',
  \100: '878700',
  \101: '87875f',
  \102: '878787',
  \103: '8787af',
  \104: '8787d7',
  \105: '8787ff',
  \106: '87af00',
  \107: '87af5f',
  \108: '87af87',
  \109: '87afaf',
  \110: '87afd7',
  \111: '87afff',
  \112: '87d700',
  \113: '87d75f',
  \114: '87d787',
  \115: '87d7af',
  \116: '87d7d7',
  \117: '87d7ff',
  \118: '87ff00',
  \119: '87ff5f',
  \120: '87ff87',
  \121: '87ffaf',
  \122: '87ffd7',
  \123: '87ffff',
  \124: 'af0000',
  \125: 'af005f',
  \126: 'af0087',
  \127: 'af00af',
  \128: 'af00d7',
  \129: 'af00ff',
  \130: 'af5f00',
  \131: 'af5f5f',
  \132: 'af5f87',
  \133: 'af5faf',
  \134: 'af5fd7',
  \135: 'af5fff',
  \136: 'af8700',
  \137: 'af875f',
  \138: 'af8787',
  \139: 'af87af',
  \140: 'af87d7',
  \141: 'af87ff',
  \142: 'afaf00',
  \143: 'afaf5f',
  \144: 'afaf87',
  \145: 'afafaf',
  \146: 'afafd7',
  \147: 'afafff',
  \148: 'afd700',
  \149: 'afd75f',
  \150: 'afd787',
  \151: 'afd7af',
  \152: 'afd7d7',
  \153: 'afd7ff',
  \154: 'afff00',
  \155: 'afff5f',
  \156: 'afff87',
  \157: 'afffaf',
  \158: 'afffd7',
  \159: 'afffff',
  \160: 'd70000',
  \161: 'd7005f',
  \162: 'd70087',
  \163: 'd700af',
  \164: 'd700d7',
  \165: 'd700ff',
  \166: 'd75f00',
  \167: 'd75f5f',
  \168: 'd75f87',
  \169: 'd75faf',
  \170: 'd75fd7',
  \171: 'd75fff',
  \172: 'd78700',
  \173: 'd7875f',
  \174: 'd78787',
  \175: 'd787af',
  \176: 'd787d7',
  \177: 'd787ff',
  \178: 'd7af00',
  \179: 'd7af5f',
  \180: 'd7af87',
  \181: 'd7afaf',
  \182: 'd7afd7',
  \183: 'd7afff',
  \184: 'd7d700',
  \185: 'd7d75f',
  \186: 'd7d787',
  \187: 'd7d7af',
  \188: 'd7d7d7',
  \189: 'd7d7ff',
  \190: 'd7ff00',
  \191: 'd7ff5f',
  \192: 'd7ff87',
  \193: 'd7ffaf',
  \194: 'd7ffd7',
  \195: 'd7ffff',
  \196: 'ff0000',
  \197: 'ff005f',
  \198: 'ff0087',
  \199: 'ff00af',
  \200: 'ff00d7',
  \201: 'ff00ff',
  \202: 'ff5f00',
  \203: 'ff5f5f',
  \204: 'ff5f87',
  \205: 'ff5faf',
  \206: 'ff5fd7',
  \207: 'ff5fff',
  \208: 'ff8700',
  \209: 'ff875f',
  \210: 'ff8787',
  \211: 'ff87af',
  \212: 'ff87d7',
  \213: 'ff87ff',
  \214: 'ffaf00',
  \215: 'ffaf5f',
  \216: 'ffaf87',
  \217: 'ffafaf',
  \218: 'ffafd7',
  \219: 'ffafff',
  \220: 'ffd700',
  \221: 'ffd75f',
  \222: 'ffd787',
  \223: 'ffd7af',
  \224: 'ffd7d7',
  \225: 'ffd7ff',
  \226: 'ffff00',
  \227: 'ffff5f',
  \228: 'ffff87',
  \229: 'ffffaf',
  \230: 'ffffd7',
  \231: 'ffffff',
  \232: '080808',
  \233: '121212',
  \234: '1c1c1c',
  \235: '262626',
  \236: '303030',
  \237: '3a3a3a',
  \238: '444444',
  \239: '4e4e4e',
  \240: '585858',
  \241: '626262',
  \242: '6c6c6c',
  \243: '767676',
  \244: '808080',
  \245: '8a8a8a',
  \246: '949494',
  \247: '9e9e9e',
  \248: 'a8a8a8',
  \249: 'b2b2b2',
  \250: 'bcbcbc',
  \251: 'c6c6c6',
  \252: 'd0d0d0',
  \253: 'dadada',
  \254: 'e4e4e4',
  \255: 'eeeeee',
  \}
" }}}

let s:c = {
  \'basic8_red (TODO: use this)': 1,
  \'basic8_green': 2,
  \'basic8_yellow': 3,
  \'basic8_blue (TODO: use this)': 4,
  \'basic8_magenta': 5,
  \'basic8_cyan': 6,
  \'basic8_black': 0,
  \'red52': 52,
  \'red88': 88,
  \'red124': 124,
  \'red160': 160,
  \'red161': 161,
  \'red196': 196,
  \'yellow58': 58,
  \'yellow100': 100,
  \'yellow136 (TODO: use this)': 136,
  \'yellow142 (TODO: use this)': 142,
  \'yellow148': 148,
  \'yellow149': 149,
  \'yellow190': 190,
  \'yellow220 (TODO: use this)': 220,
  \'yellow228': 228,
  \'orange208': 208,
  \'orange178': 178,
  \'orange180': 180,
  \'orange222': 222,
  \'light_yellow230': 229,
  \'graygreen (TODO: use this)': 23,
  \'green22': 22,
  \'green23': 23,
  \'green34': 34,
  \'green71': 71,
  \'green76': 76,
  \'green84': 84,
  \'green123': 123,
  \'seafoam': 30,
  \'seafoam2 (TODO: use this)': 35,
  \'teal50': 50,
  \'blue17 (TODO: use this)': 17,
  \'blue19 (TODO: use this)': 19,
  \'blue20 (TODO: use this)': 20,
  \'blue25': 25,
  \'blue27': 27,
  \'blue33': 33,
  \'blue37': 37,
  \'blue75': 75,
  \'blue87': 87,
  \'lavender104': 104,
  \'purple53': 53,
  \'purple89 (TODO: use this)': 89,
  \'purple90': 90,
  \'purple95 (TODO: use this)': 95,
  \'purple99 (TODO: use this)': 79,
  \'purple125': 125,
  \'purple126': 126,
  \'purple127 (TODO: use this)': 127,
  \'purple129 (TODO: use this)': 129,
  \'purple131': 131,
  \'purple141 (TODO: use this)': 141,
  \'purple161 (TODO: use this)': 161,
  \'purple201': 201,
  \'purple224': 224,
  \'purple225': 225,
  \'gray16': 16,
  \'gray232': 232,
  \'gray233': 233,
  \'gray234': 234,
  \'gray235': 235,
  \'gray236': 236,
  \'gray237': 237,
  \'gray238': 238,
  \'gray239': 239,
  \'gray240': 240,
  \'gray241': 241,
  \'gray242': 242,
  \'gray243': 243,
  \'gray244': 244,
  \'gray245': 245,
  \'gray246': 246,
  \'gray247': 247,
  \'gray248': 248,
  \'gray249': 249,
  \'gray250': 250,
  \'gray251': 251,
  \'gray252': 252,
  \'gray253': 253,
  \'gray254': 254,
  \'gray255': 255,
  \}

" }}}

" :hi funcs {{{
fun! s:color_for(id, fgbg)
  let num = s:c[a:id]
  let gui = s:cterm_gui_map[l:num]
  return 'cterm'.a:fgbg.'='.l:num.' gui'.a:fgbg.'=#'.l:gui
endfun

fun! s:fg(group, fg)
  exe 'hi '.a:group.' '.s:color_for(a:fg,'fg')
endfun

fun! s:bg(group, bg)
  exe 'hi '.a:group.' '.s:color_for(a:bg,'bg')
endfun

fun! s:fgbg(group, fg, bg)
  exe 'hi '.a:group.' '.s:color_for(a:fg,'fg').' '.s:color_for(a:bg,'bg')
endfun

fun! s:bold_fg(group, fg)
  exe 'hi '.a:group.' '.s:color_for(a:fg,'fg').' cterm=bold gui=bold'
endfun

fun! s:underline_fgbg(group, fg, bg)
  exe 'hi '.a:group.' ctermfg='.s:c[a:fg].' '
    \s:color_for(a:bg,'bg').' cterm=underline,bold gui=underline,bold'
endfun

fun! s:make_obvious(group)
  call s:fgbg(a:group, 'green84', 'red160')
endfun
" }}}

" For now, force darkness. If you're a big fan of white bg's, let me know, and
" we can collaborate on a solution.
set bg=dark
hi Normal ctermfg=254 ctermbg=0
call s:fgbg('Normal', 'gray254', 'basic8_black')
" Note: ctermbg=233 was my previous value before user feedback. Any opinions?

" Basic/Default-like Palette {{{
hi SpecialKey     term=bold ctermfg=81 guifg=Cyan
hi NonText        term=bold ctermfg=12 gui=bold guifg=Blue
hi Directory      term=bold ctermfg=159 guifg=Cyan
hi ErrorMsg       term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red
hi IncSearch      term=reverse cterm=reverse gui=reverse
hi Search         term=reverse ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi MoreMsg        term=bold ctermfg=121 gui=bold guifg=SeaGreen
hi ModeMsg        term=bold cterm=bold gui=bold
hi LineNr         term=underline ctermfg=11 guifg=Yellow
hi CursorLineNr   term=bold ctermfg=11 gui=bold guifg=Yellow
hi Question       term=standout ctermfg=121 gui=bold guifg=Green
hi StatusLine     term=bold,reverse cterm=bold,reverse gui=bold,reverse
hi StatusLineNC   term=reverse cterm=reverse gui=reverse
hi VertSplit      term=reverse cterm=reverse gui=reverse
hi Title          term=bold ctermfg=225 gui=bold guifg=Magenta
hi Visual         term=reverse ctermbg=242 guibg=DarkGrey
hi VisualNOS      term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg     term=standout ctermfg=224 guifg=Red
hi WildMenu       term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi Folded         term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=DarkGrey
hi FoldColumn     term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
hi DiffAdd        term=bold ctermbg=4 guibg=DarkBlue
hi DiffChange     term=bold ctermbg=5 guibg=DarkMagenta
hi DiffDelete     term=bold ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
hi DiffText       term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red
hi SignColumn     term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
hi Conceal        ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey
hi SpellBad       term=reverse ctermbg=9 gui=undercurl guisp=Red
hi SpellCap       term=reverse ctermbg=12 gui=undercurl guisp=Blue
hi SpellRare      term=reverse ctermbg=13 gui=undercurl guisp=Magenta
hi SpellLocal     term=underline ctermbg=14 gui=undercurl guisp=Cyan
hi Pmenu          ctermfg=0 ctermbg=13 guibg=Magenta
hi PmenuSel       ctermfg=0 ctermbg=242 guibg=DarkGrey
hi PmenuSbar      ctermbg=248 guibg=Grey
hi PmenuThumb     ctermbg=15 guibg=White
hi TabLine        term=underline cterm=underline ctermfg=15 ctermbg=242 gui=underline guibg=DarkGrey
hi TabLineSel     term=bold cterm=bold gui=bold
hi TabLineFill    term=reverse cterm=reverse gui=reverse
hi CursorColumn   term=reverse ctermbg=242 guibg=Grey40
hi CursorLine     term=underline cterm=underline guibg=Grey40
hi ColorColumn    term=reverse ctermfg=9 ctermbg=12 guifg=black guibg=lightgrey
hi MatchParen     term=reverse ctermbg=6 guibg=DarkCyan
hi Constant       term=underline ctermfg=13 guifg=#ffa0a0
hi Special        term=bold ctermfg=224 guifg=Orange
hi Identifier     term=underline cterm=bold ctermfg=14 guifg=#40ffff
hi Statement      term=bold ctermfg=11 gui=bold guifg=#ffff60
hi PreProc        term=underline ctermfg=81 guifg=#ff80ff
hi Type           term=underline ctermfg=121 gui=bold guifg=#60ff60
hi Underlined     term=underline cterm=underline ctermfg=81 gui=underline guifg=#80a0ff
hi Ignore         ctermfg=0 guifg=bg
hi Error          term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
hi Todo           term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow

call s:fg('Comment', 'gray242') " In my books, comments should be quiet.
" }}}

" Default links {{{
hi link String          Constant
hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant
hi link Float           Number
hi link Function        Identifier
hi link Conditional     Statement
hi link Repeat          Statement
hi link Label           Statement
hi link Operator        Statement
hi link Keyword         Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi link Debug           Special
hi link mailQuoted1     Type
hi link GPGWarning      WarningMsg
hi link GPGError        ErrorMsg
hi link GPGHighlightUnknownRecipient  ErrorMsg

hi link rubyConditional  Conditional
hi link rubyExceptional  rubyConditional " No-show.
hi link rubyMethodExceptional  rubyDefine " And another.
hi link rubyStringEscape  Special
hi link rubyQuoteEscape  rubyStringEscape
" hi rubyInterpolation cleared
hi link rubyInvalidVariable  Error
hi link rubyNoInterpolation  rubyString " E.g. \#{} inside a string.
hi link rubyException   Exception
hi link rubyKeyword     Keyword
"}}}

" s:detailed_colors — the good stuff {{{
fun! s:detailed_colors()
  " vimdiff uses Diff*
  call s:bg('DiffChange', 'gray240')
  call s:bg('DiffText', 'gray232')
  call s:bg('DiffAdd', 'green23')
  call s:bg('DiffDelete', 'yellow58')
  " ft=diff syntax uses diff*
  call s:fg('diffAdded', 'green34')
  call s:fg('diffRemoved', 'yellow58')
  " diffFile

  call s:fg('rubyConstant', 'green34')

  call s:bold_fg('rubyClass', 'purple126')
  call s:fg('rubyModule', 'purple126')
  call s:fg('rubyDefine', 'basic8_magenta')
  call s:fg('rubyInclude', 'purple53')

  call s:bold_fg('rubyFunction', 'blue27')
  " No-show: call s:make_obvious('rubyMethodDeclaration')

  call s:fg('rubyInstanceVariable', 'blue75')

  call s:fgbg('rubyString', 'red160', 'gray233')
  call s:fg('rubyStringDelimiter', 'blue33')
  call s:fg('rubyInterpolationDelimiter', 'gray244')

  call s:fg('rubyRegexpSpecial', 'seafoam')
  hi link rubyRegexpComment Comment
  " Not quite sure why these don't show up:
  " call s:make_obvious('rubyRegexpParens')
  " call s:make_obvious('rubyRegexpBrackets')

  call s:fg('rubyRegexpCharClass', 'basic8_green')
  call s:fg('rubyRegexpQuantifier', 'yellow148')
  call s:bold_fg('rubyRegexpEscape', 'purple90')
  call s:fg('rubyRegexpAnchor', 'purple90')
  call s:fg('rubyRegexpDot', 'green34')
  call s:bold_fg('rubyRegexpDelimiter', 'red88')
  call s:fgbg('rubyRegexp', 'red160', 'gray233')
  call s:fg('rubyASCIICode', 'green71')

  call s:fg('rubyPseudoVariable', 'purple125')
  call s:fg('rubyInteger', 'red124')
  call s:fg('rubyFloat', 'red160')

  call s:fg('rubyBlockArgument', 'blue87')
  call s:fg('rubySymbol', 'lavender104')
  call s:bold_fg('rubyBlockParameter', 'basic8_cyan')
  call s:fg('rubyBlockParameterList', 'blue25')
  call s:bold_fg('rubyPredefinedConstant', 'green22')
  call s:bold_fg('rubyPredefinedVariable', 'blue37')
  " XXX no clue why this wont show up: call s:make_obvious('rubyHeredocStart')
  " TODO: fix these: call s:make_obvious('rubyAliasDeclaration2')
  "                  call s:make_obvious('rubyAliasDeclaration')
  call s:fg('rubyBoolean', 'purple131')
  call s:fg('rubyOperator', 'green123')
  hi link rubyPseudoOperator  rubyOperator " -= /= **= *= etc
  " TODO! call s:make_obvious('rubyClassDeclaration')
  "       call s:make_obvious('rubyDeclaration')
  " call s:make_obvious('rubyModuleDeclaration')
  hi link rubyBeginEnd    Statement " TODO
  call s:fg('rubyAccess', 'yellow100')
  call s:fg('rubyAttribute', 'orange178') " attr_{accessor,reader,writer}
  call s:fg('rubyEval', 'yellow190')

  " Blocks:
  " (basic)
  call s:fg('rubyMethodBlock', 'purple224')
  call s:fg('rubyBlock', 'purple225')
  call s:fg('rubyBlockExpression', 'orange180')
  " (conditionals)
  call s:fg('rubyControl', 'orange178')
  call s:bold_fg('Conditional', 'basic8_yellow')
  call s:bold_fg('rubyConditionalModifier', 'yellow148') " 'Yoda if'
  call s:fg('rubyConditionalExpression', 'light_yellow230')
  hi link rubyCaseExpression rubyConditionalExpression
  " (loops)
  call s:fg('rubyRepeat', 'orange178')
  call s:bold_fg('rubyRepeatModifier', 'yellow149') " …while/until
  call s:fg('rubyRepeatExpression', 'orange222')
  hi link rubyDoBlock rubyRepeatExpression

  " TODO: call s:make_obvious('rubyOptionalDo')
  " TODO: call s:make_obvious('rubyOptionalDoLine')
  call s:fg('rubySharpBang', 'gray251')
  hi link rubyFirstAndSecondCommentLine rubySharpBang
  hi link rubyComment Comment
  " hi rubyMultilineComment cleared
  hi link rubyDocumentation  Comment
  call s:fg('rubyDataDirective', 'purple201')
  call s:fg('rubyData', 'gray245')

  "* Distinguish between each of TODO/FIXME/XXX
  call s:fgbg('detailTodo', 'green76', 'gray238')
  call s:fgbg('detailFixme', 'gray232', 'orange208')
  call s:fgbg('detailXxx', 'gray235', 'red196')

  call s:fgbg('Error', 'gray235', 'red196')
  call s:underline_fgbg('Search', 'gray254', 'gray235')

  " https://github.com/bitc/vim-bad-whitespace
  call s:fgbg('BadWhitespace', 'gray238', 'yellow58')
  hi link rubySpaceError BadWhitespace

  "* `fail`/`raise`/`exit` were yellow by default, but here a more warny orange.
  call s:fg('Exception', 'orange208')
  hi link rubyExits Exception
  "* class `@@vars` get ugly, cautionary color: they are troublesome.
  call s:fgbg('rubyClassVariable', 'blue75', 'red52')
  "* global `$vars` also get a bit of ugliness. Everyone knows they're iffy.
  call s:fgbg('rubyGlobalVariable', 'red161', 'gray234')

  " rails.vim niceness:
  call s:fg('rubyRailsARAssociationMethod', 'teal50')

  " detailed.vim especialties:
  call s:fg('rubyInitialize', 'green84')
  call s:bold_fg('rubyEncodingDirective', 'green22')

  " Only linked highlights, not actual syntax:
  " call s:make_obvious('rubyIdentifier')
  " call s:make_obvious('rubyError')

  " Pretty much just the leftover default:
  " call s:make_obvious('rubyLocalVariableOrMethod')

  " Gets all [{()}] within any {}'s. Not very useful AFAICT:
  " call s:make_obvious('rubyCurlyBlock')

  " These mess up on first ] of [a[1]]. Seems plain busted.
  " call s:make_obvious('rubyArrayDelimiter')
  " call s:make_obvious('rubyArrayLiteral')

  " Mere implementation details, AFAICT:
  " call s:make_obvious('rubyNestedParentheses')
  " call s:make_obvious('rubyNestedCurlyBraces')
  " call s:make_obvious('rubyNestedAngleBrackets')
  " call s:make_obvious('rubyNestedSquareBrackets')
  " call s:make_obvious('rubyDelimEscape')
  " call s:make_obvious('rubySymbolDelimiter')
endfun
" }}}

fun! s:detailed_syntax_addtions()
  call s:detailed_colors()

  " The default syntax/ruby.vim gets this way wrong (only does 2 chars and is
  " transparent):
  syn match rubyBlockArgument "&[_[:lower:]][_[:alnum:]]*" contains=NONE display
  " Steal this back from the too-generic 'rubyControl':
  syn match rubyExits "\<\%(exit!\|\%(abort\|at_exit\|exit\|fork\|trap\)\>[?!]\@!\)"

  " Bonus!
  syn match rubyInitialize '\<initialize\>' contained containedin=rubyMethodDeclaration

  syn match rubyEncodingDirective "\cencoding: *utf-8" contained

  " TODO - make this more elegant.
  syn match rubyFirstAndSecondCommentLine '\%^#.*'
    \ contains=rubyEncodingDirective contained
  syn match rubyFirstAndSecondCommentLine '\%^#.*\n#.*'
    \ contains=rubyEncodingDirective contained

  syn keyword detailTodo TODO contained
  syn keyword detailFixme FIXME contained
  syn keyword detailXxx XXX contained
  syn match   rubyComment   "#.*" contains=rubySharpBang,rubySpaceError,
    \rubyFirstAndSecondCommentLine,detailTodo,detailFixme,detailXxx,@Spell
  " TODO - somehow make the detail{Todo,Fixme,Xxx} work for non-ruby langs.
endfun
call s:detailed_syntax_addtions()

" Rainbow-Parens Improved {{{
" Inlined from v2.3 of http://www.vim.org/scripts/script.php?script_id=4176
" 1. to remove the external dep, 2. to work around vim-rails resetting it.
" Thanks!
fun! s:fatpacked_rainbow_parens()
  let guifgs = exists('g:rainbow_guifgs')? g:rainbow_guifgs : [
        \ 'DarkOrchid3', 'RoyalBlue3', 'SeaGreen3',
        \ 'DarkOrange3', 'FireBrick',
        \ ]

  let ctermfgs = exists('g:rainbow_ctermfgs')? g:rainbow_ctermfgs : [
        \ 'darkgray', 'Darkblue', 'darkmagenta',
        \ 'darkcyan', 'darkred', 'darkgreen',
        \ ]

  let max = has('gui_running')? len(guifgs) : len(ctermfgs)

  let cmd = 'syn region %s matchgroup=%s start=/%s/ end=/%s/ containedin=%s contains=%s'
  let str = 'TOP'
  for each in range(1, max)
    let str .= ',lv'.each
  endfor
  for [left , right] in [['(',')'],['\[','\]'],['{','}']]
    for each in range(1, max - 1)
      exe printf(cmd, 'lv'.each, 'lv'.each.'c', left, right, 'lv'.(each+1) , str)
    endfor
    exe printf(cmd, 'lv'.max, 'lv'.max.'c', left, right, 'lv1' , str)
  endfor

  for id in range(1 , max)
    let ctermfg = ctermfgs[(max - id) % len(ctermfgs)]
    let guifg = guifgs[(max - id) % len(guifgs)]
    exe 'hi default lv'.id.'c ctermfg='.ctermfg.' guifg='.guifg
  endfor
endfun
" }}}

let &cpo = s:save_cpo

" vim:foldmethod=marker
