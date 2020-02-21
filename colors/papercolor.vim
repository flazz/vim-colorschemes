" Theme: PaperColor
" Author: Nikyle Nguyen <NLKNguyen@MSN.com>
" License: MIT
" Source: http://github.com/NLKNguyen/papercolor-theme

let s:version = '0.9.x'

" Note on navigating this source code:
" - Use folding feature to collapse/uncollapse blocks of marked code
"     zM to fold all markers in this file to see the structure of the source code
"     zR to unfold all recursively
"     za to toggle a fold
"     See: http://vim.wikia.com/wiki/Folding
" - The main section where functions are actually called is located at the end.
" - The first section right after this note is where themes are defined. Theme
"   designers only need to work on this section.

" THEMES: {{{

let s:themes = {}

" Theme name should be lowercase
let s:themes['default'] = {
      \   'maintainer'  : 'Nikyle Nguyen<NLKNguyen@MSN.com>',
      \   'source' : 'http://github.com/NLKNguyen/papercolor-theme',
      \   'description' : 'Original PaperColor Theme, inspired by Google Material Design',
      \ }

" Theme can have 'light' and/or 'dark' color palette.
" Color values can be HEX and/or 256-color. Use empty string '' if not provided.
" Only color00 -> color15 are required. The rest are optional.
let s:themes['default'].light = {
      \     'TEST_256_COLOR_CONSISTENCY' : 1,
      \     'palette' : {
      \       'color00' : ['#eeeeee', '255'],
      \       'color01' : ['#af0000', '124'],
      \       'color02' : ['#008700', '28'],
      \       'color03' : ['#5f8700', '64'],
      \       'color04' : ['#0087af', '31'],
      \       'color05' : ['#878787', '102'],
      \       'color06' : ['#005f87', '24'],
      \       'color07' : ['#444444', '238'],
      \       'color08' : ['#bcbcbc', '250'],
      \       'color09' : ['#d70000', '160'],
      \       'color10' : ['#d70087', '162'],
      \       'color11' : ['#8700af', '91'],
      \       'color12' : ['#d75f00', '166'],
      \       'color13' : ['#d75f00', '166'],
      \       'color14' : ['#005faf', '25'],
      \       'color15' : ['#005f87', '24'],
      \       'color16' : ['#0087af', '31'],
      \       'color17' : ['#008700', '28'],
      \       'cursor_fg' : ['#eeeeee', '255'],
      \       'cursor_bg' : ['#005f87', '24'],
      \       'cursorline' : ['#e4e4e4', '254'],
      \       'cursorcolumn' : ['#e4e4e4', '254'],
      \       'cursorlinenr_fg' : ['#af5f00', '130'],
      \       'cursorlinenr_bg' : ['#eeeeee', '255'],
      \       'popupmenu_fg' : ['#444444', '238'],
      \       'popupmenu_bg' : ['#d0d0d0', '252'],
      \       'search_fg' : ['#444444', '238'],
      \       'search_bg' : ['#ffff5f', '227'],
      \       'linenumber_fg' : ['#b2b2b2', '249'],
      \       'linenumber_bg' : ['#eeeeee', '255'],
      \       'vertsplit_fg' : ['#005f87', '24'],
      \       'vertsplit_bg' : ['#eeeeee', '255'],
      \       'statusline_active_fg' : ['#e4e4e4', '254'],
      \       'statusline_active_bg' : ['#005f87', '24'],
      \       'statusline_inactive_fg' : ['#444444', '238'],
      \       'statusline_inactive_bg' : ['#d0d0d0', '252'],
      \       'todo_fg' : ['#00af5f', '35'],
      \       'todo_bg' : ['#eeeeee', '255'],
      \       'error_fg' : ['#af0000', '124'],
      \       'error_bg' : ['#ffd7ff', '225'],
      \       'matchparen_bg' : ['#c6c6c6', '251'],
      \       'matchparen_fg' : ['#005f87', '24'],
      \       'visual_fg' : ['#eeeeee', '255'],
      \       'visual_bg' : ['#0087af', '31'],
      \       'folded_fg' : ['#0087af', '31'],
      \       'folded_bg' : ['#afd7ff', '153'],
      \       'wildmenu_fg': ['#444444', '238'],
      \       'wildmenu_bg': ['#ffff00', '226'],
      \       'spellbad':   ['#ffafd7', '218'],
      \       'spellcap':   ['#ffffaf', '229'],
      \       'spellrare':  ['#afff87', '156'],
      \       'spelllocal': ['#d7d7ff', '189'],
      \       'diffadd_fg':    ['#008700', '28'],
      \       'diffadd_bg':    ['#afffaf', '157'],
      \       'diffdelete_fg': ['#af0000', '124'],
      \       'diffdelete_bg': ['#ffd7ff', '225'],
      \       'difftext_fg':   ['#0087af', '31'],
      \       'difftext_bg':   ['#ffffd7', '230'],
      \       'diffchange_fg': ['#444444', '238'],
      \       'diffchange_bg': ['#ffd787', '222'],
      \       'tabline_bg':          ['#005f87', '24'],
      \       'tabline_active_fg':   ['#444444', '238'],
      \       'tabline_active_bg':   ['#e4e4e4', '254'],
      \       'tabline_inactive_fg': ['#eeeeee', '255'],
      \       'tabline_inactive_bg': ['#0087af', '31'],
      \       'buftabline_bg':          ['#005f87', '24'],
      \       'buftabline_current_fg':  ['#444444', '238'],
      \       'buftabline_current_bg':  ['#e4e4e4', '254'],
      \       'buftabline_active_fg': ['#eeeeee', '255'],
      \       'buftabline_active_bg': ['#005faf', '25'],
      \       'buftabline_inactive_fg': ['#eeeeee', '255'],
      \       'buftabline_inactive_bg': ['#0087af', '31']
      \     }
      \   }

let s:themes['default'].dark = {
      \     'TEST_256_COLOR_CONSISTENCY' : 1,
      \     'palette' : {
      \       'color00' : ['#1c1c1c', '234'],
      \       'color01' : ['#af005f', '125'],
      \       'color02' : ['#5faf00', '70'],
      \       'color03' : ['#d7af5f', '179'],
      \       'color04' : ['#5fafd7', '74'],
      \       'color05' : ['#808080', '244'],
      \       'color06' : ['#d7875f', '173'],
      \       'color07' : ['#d0d0d0', '252'],
      \       'color08' : ['#585858', '240'],
      \       'color09' : ['#5faf5f', '71'],
      \       'color10' : ['#afd700', '148'],
      \       'color11' : ['#af87d7', '140'],
      \       'color12' : ['#ffaf00', '214'],
      \       'color13' : ['#ff5faf', '205'],
      \       'color14' : ['#00afaf', '37'],
      \       'color15' : ['#5f8787', '66'],
      \       'color16' : ['#5fafd7', '74'],
      \       'color17' : ['#d7af00', '178'],
      \       'cursor_fg' : ['#1c1c1c', '234'],
      \       'cursor_bg' : ['#c6c6c6', '251'],
      \       'cursorline' : ['#303030', '236'],
      \       'cursorcolumn' : ['#303030', '236'],
      \       'cursorlinenr_fg' : ['#ffff00', '226'],
      \       'cursorlinenr_bg' : ['#1c1c1c', '234'],
      \       'popupmenu_fg' : ['#c6c6c6', '251'],
      \       'popupmenu_bg' : ['#303030', '236'],
      \       'search_fg' : ['#000000', '16'],
      \       'search_bg' : ['#00875f', '29'],
      \       'linenumber_fg' : ['#585858', '240'],
      \       'linenumber_bg' : ['#1c1c1c', '234'],
      \       'vertsplit_fg' : ['#5f8787', '66'],
      \       'vertsplit_bg' : ['#1c1c1c', '234'],
      \       'statusline_active_fg' : ['#1c1c1c', '234'],
      \       'statusline_active_bg' : ['#5f8787', '66'],
      \       'statusline_inactive_fg' : ['#bcbcbc', '250'],
      \       'statusline_inactive_bg' : ['#3a3a3a', '237'],
      \       'todo_fg' : ['#ff8700', '208'],
      \       'todo_bg' : ['#1c1c1c', '234'],
      \       'error_fg' : ['#af005f', '125'],
      \       'error_bg' : ['#5f0000', '52'],
      \       'matchparen_bg' : ['#4e4e4e', '239'],
      \       'matchparen_fg' : ['#c6c6c6', '251'],
      \       'visual_fg' : ['#000000', '16'],
      \       'visual_bg' : ['#8787af', '103'],
      \       'folded_fg' : ['#d787ff', '177'],
      \       'folded_bg' : ['#5f005f', '53'],
      \       'wildmenu_fg': ['#1c1c1c', '234'],
      \       'wildmenu_bg': ['#afd700', '148'],
      \       'tabline_bg':          ['#262626', '235'],
      \       'tabline_active_fg':   ['#121212', '233'],
      \       'tabline_active_bg':   ['#00afaf', '37'],
      \       'tabline_inactive_fg': ['#bcbcbc', '250'],
      \       'tabline_inactive_bg': ['#585858', '240'],
      \       'spellbad':   ['#5f0000', '52'],
      \       'spellcap':   ['#5f005f', '53'],
      \       'spellrare':  ['#005f00', '22'],
      \       'spelllocal': ['#00005f', '17'],
      \       'diffadd_fg':    ['#87d700', '112'],
      \       'diffadd_bg':    ['#005f00', '22'],
      \       'diffdelete_fg': ['#af005f', '125'],
      \       'diffdelete_bg': ['#5f0000', '52'],
      \       'difftext_fg':   ['#5fffff', '87'],
      \       'difftext_bg':   ['#008787', '30'],
      \       'diffchange_fg': ['#d0d0d0', '252'],
      \       'diffchange_bg': ['#005f5f', '23']
      \     }
      \   }


" }}}

" Get Selected Theme: {{{

let s:theme_name = 'default'

if exists("g:PaperColor_Theme") " Users expressed theme preference
  let lowercase_theme_name = tolower(g:PaperColor_Theme)

  if has_key(s:themes, lowercase_theme_name) "the name is part of built-in themes
    let s:theme_name = lowercase_theme_name

  else "expect a variable with a designated theme name
    let theme_variable =  "g:PaperColor_Theme_" . lowercase_theme_name

    if exists(theme_variable)
      " Register custom theme to theme dictionary
      let s:themes[lowercase_theme_name] = {theme_variable}
      let s:theme_name = lowercase_theme_name
    else
      echom "Cannot find variable " . theme_variable
      " Still use 'default' theme
    endif

  endif
endif

let s:selected_theme = s:themes[s:theme_name]


" }}}

" Command to show theme information {{{
fun! g:PaperColor()
  echom 'PaperColor Theme Framework'
  echom '  version ' . s:version
  echom '  by Nikyle Nguyen et al.'
  echom '  at https://github.com/NLKNguyen/papercolor-theme/'
  echom ' '
  echom 'Current theme: ' . s:theme_name
  echom '  ' . s:selected_theme['description']
  echom '  by ' . s:selected_theme['maintainer']
  echom '  at ' . s:selected_theme['source']
endfun

" @brief command alias for g:PaperColor()
command! -nargs=0 PaperColor :call g:PaperColor()
" }}}

" Get Theme Variant: either dark or light  {{{
let s:selected_variant = 'dark'

let s:is_dark=(&background == 'dark')

if s:is_dark
  if has_key(s:selected_theme, 'dark')
    let s:selected_variant = 'dark'
  else " in case the theme only provides the other variant
    let s:selected_variant = 'light'
  endif

else " is light background
  if has_key(s:selected_theme, 'light')
    let s:selected_variant = 'light'
  else " in case the theme only provides the other variant
    let s:selected_variant = 'dark'
  endif
endif

let s:palette = s:selected_theme[s:selected_variant].palette
" }}}

" Systematic User-Config Options: {{{
" Example config in .vimrc
" let g:PaperColor_Theme_Options = {
"       \   'theme': {
"       \     'default': {
"       \       'allow_bold': 1,
"       \       'allow_italic': 0,
"       \       'transparent_background': 1
"       \     }
"       \   },
"       \   'language': {
"       \     'python': {
"       \       'highlight_builtins' : 1
"       \     },
"       \     'c': {
"       \       'highlight_builtins' : 1
"       \     },
"       \     'cpp': {
"       \       'highlight_standard_library': 1
"       \     }
"       \   }
"       \ }
"
let s:options = {}
if exists("g:PaperColor_Theme_Options")
  let s:options = g:PaperColor_Theme_Options
endif

" }}}

" Theme Options: {{{
" Part of user-config options
let s:theme_options = {}
if has_key(s:options, 'theme')
  let s:theme_options = s:options['theme']
endif


" Function to obtain theme option for the current theme
" @param option - string
" @return the value of that option if specified; empty string otherwise
" Example: s:Theme_Options('transparent_background')
"     returns 1 if there is an option for current theme in `theme` section in
"     g:PaperColor_Theme_Options such as:
"       'theme': {
"       \   'default': {
"       \     'transparent_background': 1
"       \   }
"       }
"     OR it could specify for the exact light or dark variant of the theme,
"     which will take higher precedence for the current theme variant
"       'theme': {
"       \   'default': {
"       \     'transparent_background': 0
"       \   },
"       \   'default.light': {
"       \     'transparent_background': 1
"       \   }
"       }
fun! s:Theme_Options(option)
  let l:value = ''

  let l:variant = 'light'
  if s:is_dark
    let l:variant = 'dark'
  endif
  let l:specific_theme_variant = s:theme_name . '.' . l:variant

  if has_key(s:theme_options, l:specific_theme_variant)
    let l:theme_option = s:theme_options[l:specific_theme_variant]
    if has_key(l:theme_option, a:option)
      let l:value = l:theme_option[a:option]
    endif
  elseif has_key(s:theme_options, s:theme_name)
    let l:theme_option = s:theme_options[s:theme_name]
    if has_key(l:theme_option, a:option)
      let l:value = l:theme_option[a:option]
    endif
  endif

  return l:value
endfun

" These options will be checked at many place so better be cached to variables
let s:TRANSPARENT_BACKGROUND = s:Theme_Options('transparent_background') == 1


" }}}

" Language Options: {{{
" Part of user-config options
let s:language_options = {}
if has_key(s:options, 'language')
  let s:language_options = s:options['language']
endif

" Function to obtain a language option
" @param option - string pattern [language].[option]
" @param value - number or string
" @return the option value if it is provided; empty string otherwise
" Example: s:Language_Options('python.highlight_builtins', 1)
"     returns 1 if there is an option in `language` section in
"     g:PaperColor_Theme_Options such as:
"       'language': {
"       \   'python': {
"       \     'highlight_builtins': 1
"       \   }
"       }
fun! s:Language_Options(option)
  let l:parts = split(a:option, "\\.")
  let l:language = l:parts[0]
  let l:option = l:parts[1]

  if has_key(s:language_options, l:language)
    let l:language_option = s:language_options[l:language]
    if has_key(l:language_option, l:option)
      return l:language_option[l:option]
    endif
  endif

  return ''
endfun

" }}}

" HEX TO 256-COLOR CONVERTER: {{{
" Returns an approximate grey index for the given grey level
fun! s:grey_number(x)
  if &t_Co == 88
    if a:x < 23
      return 0
    elseif a:x < 69
      return 1
    elseif a:x < 103
      return 2
    elseif a:x < 127
      return 3
    elseif a:x < 150
      return 4
    elseif a:x < 173
      return 5
    elseif a:x < 196
      return 6
    elseif a:x < 219
      return 7
    elseif a:x < 243
      return 8
    else
      return 9
    endif
  else
    if a:x < 14
      return 0
    else
      let l:n = (a:x - 8) / 10
      let l:m = (a:x - 8) % 10
      if l:m < 5
        return l:n
      else
        return l:n + 1
      endif
    endif
  endif
endfun

" Returns the actual grey level represented by the grey index
fun! s:grey_level(n)
  if &t_Co == 88
    if a:n == 0
      return 0
    elseif a:n == 1
      return 46
    elseif a:n == 2
      return 92
    elseif a:n == 3
      return 115
    elseif a:n == 4
      return 139
    elseif a:n == 5
      return 162
    elseif a:n == 6
      return 185
    elseif a:n == 7
      return 208
    elseif a:n == 8
      return 231
    else
      return 255
    endif
  else
    if a:n == 0
      return 0
    else
      return 8 + (a:n * 10)
    endif
  endif
endfun

" Returns the palette index for the given grey index
fun! s:grey_colour(n)
  if &t_Co == 88
    if a:n == 0
      return 16
    elseif a:n == 9
      return 79
    else
      return 79 + a:n
    endif
  else
    if a:n == 0
      return 16
    elseif a:n == 25
      return 231
    else
      return 231 + a:n
    endif
  endif
endfun

" Returns an approximate colour index for the given colour level
fun! s:rgb_number(x)
  if &t_Co == 88
    if a:x < 69
      return 0
    elseif a:x < 172
      return 1
    elseif a:x < 230
      return 2
    else
      return 3
    endif
  else
    if a:x < 75
      return 0
    else
      let l:n = (a:x - 55) / 40
      let l:m = (a:x - 55) % 40
      if l:m < 20
        return l:n
      else
        return l:n + 1
      endif
    endif
  endif
endfun

" Returns the actual colour level for the given colour index
fun! s:rgb_level(n)
  if &t_Co == 88
    if a:n == 0
      return 0
    elseif a:n == 1
      return 139
    elseif a:n == 2
      return 205
    else
      return 255
    endif
  else
    if a:n == 0
      return 0
    else
      return 55 + (a:n * 40)
    endif
  endif
endfun

" Returns the palette index for the given R/G/B colour indices
fun! s:rgb_colour(x, y, z)
  if &t_Co == 88
    return 16 + (a:x * 16) + (a:y * 4) + a:z
  else
    return 16 + (a:x * 36) + (a:y * 6) + a:z
  endif
endfun

" Returns the palette index to approximate the given R/G/B colour levels
fun! s:colour(r, g, b)
  " Get the closest grey
  let l:gx = s:grey_number(a:r)
  let l:gy = s:grey_number(a:g)
  let l:gz = s:grey_number(a:b)

  " Get the closest colour
  let l:x = s:rgb_number(a:r)
  let l:y = s:rgb_number(a:g)
  let l:z = s:rgb_number(a:b)

  if l:gx == l:gy && l:gy == l:gz
    " There are two possibilities
    let l:dgr = s:grey_level(l:gx) - a:r
    let l:dgg = s:grey_level(l:gy) - a:g
    let l:dgb = s:grey_level(l:gz) - a:b
    let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
    let l:dr = s:rgb_level(l:gx) - a:r
    let l:dg = s:rgb_level(l:gy) - a:g
    let l:db = s:rgb_level(l:gz) - a:b
    let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
    if l:dgrey < l:drgb
      " Use the grey
      return s:grey_colour(l:gx)
    else
      " Use the colour
      return s:rgb_colour(l:x, l:y, l:z)
    endif
  else
    " Only one possibility
    return s:rgb_colour(l:x, l:y, l:z)
  endif
endfun

" Returns the palette index to approximate the '#rrggbb' hex string
fun! s:to_256(rgb)
  let l:r = ("0x" . strpart(a:rgb, 1, 2)) + 0
  let l:g = ("0x" . strpart(a:rgb, 3, 2)) + 0
  let l:b = ("0x" . strpart(a:rgb, 5, 2)) + 0

  return s:colour(l:r, l:g, l:b)
endfun



" }}}

" 256-COLOR TO HEX TABLE: {{{

""" Xterm 256 color dictionary
" See: http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
"
let s:to_HEX = {
      \ '00':  '#000000',  '01':  '#800000',  '02':  '#008000',  '03':  '#808000',  '04':  '#000080',
      \ '05':  '#800080',  '06':  '#008080',  '07':  '#c0c0c0',  '08':  '#808080',  '09':  '#ff0000',
      \ '10':  '#00ff00',  '11':  '#ffff00',  '12':  '#0000ff',  '13':  '#ff00ff',  '14':  '#00ffff',
      \ '15':  '#ffffff',  '16':  '#000000',  '17':  '#00005f',  '18':  '#000087',  '19':  '#0000af',
      \ '20':  '#0000d7',  '21':  '#0000ff',  '22':  '#005f00',  '23':  '#005f5f',  '24':  '#005f87',
      \ '25':  '#005faf',  '26':  '#005fd7',  '27':  '#005fff',  '28':  '#008700',  '29':  '#00875f',
      \ '30':  '#008787',  '31':  '#0087af',  '32':  '#0087d7',  '33':  '#0087ff',  '34':  '#00af00',
      \ '35':  '#00af5f',  '36':  '#00af87',  '37':  '#00afaf',  '38':  '#00afd7',  '39':  '#00afff',
      \ '40':  '#00d700',  '41':  '#00d75f',  '42':  '#00d787',  '43':  '#00d7af',  '44':  '#00d7d7',
      \ '45':  '#00d7ff',  '46':  '#00ff00',  '47':  '#00ff5f',  '48':  '#00ff87',  '49':  '#00ffaf',
      \ '50':  '#00ffd7',  '51':  '#00ffff',  '52':  '#5f0000',  '53':  '#5f005f',  '54':  '#5f0087',
      \ '55':  '#5f00af',  '56':  '#5f00d7',  '57':  '#5f00ff',  '58':  '#5f5f00',  '59':  '#5f5f5f',
      \ '60':  '#5f5f87',  '61':  '#5f5faf',  '62':  '#5f5fd7',  '63':  '#5f5fff',  '64':  '#5f8700',
      \ '65':  '#5f875f',  '66':  '#5f8787',  '67':  '#5f87af',  '68':  '#5f87d7',  '69':  '#5f87ff',
      \ '70':  '#5faf00',  '71':  '#5faf5f',  '72':  '#5faf87',  '73':  '#5fafaf',  '74':  '#5fafd7',
      \ '75':  '#5fafff',  '76':  '#5fd700',  '77':  '#5fd75f',  '78':  '#5fd787',  '79':  '#5fd7af',
      \ '80':  '#5fd7d7',  '81':  '#5fd7ff',  '82':  '#5fff00',  '83':  '#5fff5f',  '84':  '#5fff87',
      \ '85':  '#5fffaf',  '86':  '#5fffd7',  '87':  '#5fffff',  '88':  '#870000',  '89':  '#87005f',
      \ '90':  '#870087',  '91':  '#8700af',  '92':  '#8700d7',  '93':  '#8700ff',  '94':  '#875f00',
      \ '95':  '#875f5f',  '96':  '#875f87',  '97':  '#875faf',  '98':  '#875fd7',  '99':  '#875fff',
      \ '100': '#878700',  '101': '#87875f',  '102': '#878787',  '103': '#8787af',  '104': '#8787d7',
      \ '105': '#8787ff',  '106': '#87af00',  '107': '#87af5f',  '108': '#87af87',  '109': '#87afaf',
      \ '110': '#87afd7',  '111': '#87afff',  '112': '#87d700',  '113': '#87d75f',  '114': '#87d787',
      \ '115': '#87d7af',  '116': '#87d7d7',  '117': '#87d7ff',  '118': '#87ff00',  '119': '#87ff5f',
      \ '120': '#87ff87',  '121': '#87ffaf',  '122': '#87ffd7',  '123': '#87ffff',  '124': '#af0000',
      \ '125': '#af005f',  '126': '#af0087',  '127': '#af00af',  '128': '#af00d7',  '129': '#af00ff',
      \ '130': '#af5f00',  '131': '#af5f5f',  '132': '#af5f87',  '133': '#af5faf',  '134': '#af5fd7',
      \ '135': '#af5fff',  '136': '#af8700',  '137': '#af875f',  '138': '#af8787',  '139': '#af87af',
      \ '140': '#af87d7',  '141': '#af87ff',  '142': '#afaf00',  '143': '#afaf5f',  '144': '#afaf87',
      \ '145': '#afafaf',  '146': '#afafd7',  '147': '#afafff',  '148': '#afd700',  '149': '#afd75f',
      \ '150': '#afd787',  '151': '#afd7af',  '152': '#afd7d7',  '153': '#afd7ff',  '154': '#afff00',
      \ '155': '#afff5f',  '156': '#afff87',  '157': '#afffaf',  '158': '#afffd7',  '159': '#afffff',
      \ '160': '#d70000',  '161': '#d7005f',  '162': '#d70087',  '163': '#d700af',  '164': '#d700d7',
      \ '165': '#d700ff',  '166': '#d75f00',  '167': '#d75f5f',  '168': '#d75f87',  '169': '#d75faf',
      \ '170': '#d75fd7',  '171': '#d75fff',  '172': '#d78700',  '173': '#d7875f',  '174': '#d78787',
      \ '175': '#d787af',  '176': '#d787d7',  '177': '#d787ff',  '178': '#d7af00',  '179': '#d7af5f',
      \ '180': '#d7af87',  '181': '#d7afaf',  '182': '#d7afd7',  '183': '#d7afff',  '184': '#d7d700',
      \ '185': '#d7d75f',  '186': '#d7d787',  '187': '#d7d7af',  '188': '#d7d7d7',  '189': '#d7d7ff',
      \ '190': '#d7ff00',  '191': '#d7ff5f',  '192': '#d7ff87',  '193': '#d7ffaf',  '194': '#d7ffd7',
      \ '195': '#d7ffff',  '196': '#ff0000',  '197': '#ff005f',  '198': '#ff0087',  '199': '#ff00af',
      \ '200': '#ff00d7',  '201': '#ff00ff',  '202': '#ff5f00',  '203': '#ff5f5f',  '204': '#ff5f87',
      \ '205': '#ff5faf',  '206': '#ff5fd7',  '207': '#ff5fff',  '208': '#ff8700',  '209': '#ff875f',
      \ '210': '#ff8787',  '211': '#ff87af',  '212': '#ff87d7',  '213': '#ff87ff',  '214': '#ffaf00',
      \ '215': '#ffaf5f',  '216': '#ffaf87',  '217': '#ffafaf',  '218': '#ffafd7',  '219': '#ffafff',
      \ '220': '#ffd700',  '221': '#ffd75f',  '222': '#ffd787',  '223': '#ffd7af',  '224': '#ffd7d7',
      \ '225': '#ffd7ff',  '226': '#ffff00',  '227': '#ffff5f',  '228': '#ffff87',  '229': '#ffffaf',
      \ '230': '#ffffd7',  '231': '#ffffff',  '232': '#080808',  '233': '#121212',  '234': '#1c1c1c',
      \ '235': '#262626',  '236': '#303030',  '237': '#3a3a3a',  '238': '#444444',  '239': '#4e4e4e',
      \ '240': '#585858',  '241': '#626262',  '242': '#6c6c6c',  '243': '#767676',  '244': '#808080',
      \ '245': '#8a8a8a',  '246': '#949494',  '247': '#9e9e9e',  '248': '#a8a8a8',  '249': '#b2b2b2',
      \ '250': '#bcbcbc',  '251': '#c6c6c6',  '252': '#d0d0d0',  '253': '#dadada',  '254': '#e4e4e4',
      \ '255': '#eeeeee' }

" }}}

" COLOR MODE IDENTIFICATION: {{{
let s:MODE_16_COLOR = 0
let s:MODE_256_COLOR = 1
let s:MODE_TRUE_COLOR = 2
let s:MODE_TRUE_OR_256_COLOR = 3 " for code generation purpose, not for theme usage

if has("gui_running")  || has('termguicolors') && &termguicolors || has('nvim') && $NVIM_TUI_ENABLE_TRUE_COLOR
  let s:mode = s:MODE_TRUE_COLOR
elseif (&t_Co == 256)
  let s:mode = s:MODE_256_COLOR
else
  let s:mode = s:MODE_16_COLOR
endif

" }}}

" COLOR MODE ADAPTATION: {{{
" Handle Preprocessing For Current Color Set If Necessary
fun! s:adapt_to_environment()
  let s:bold = "bold"
  let s:italic = "italic"
  if s:mode == s:MODE_TRUE_COLOR
    " TODO: if require auto-gui-color coversion
  elseif s:mode == s:MODE_256_COLOR
    " TODO: if require auto-256-color coversion
  elseif s:mode == s:MODE_TRUE_OR_256_COLOR
    " TODO:
  else " if s:use_16_color
    let s:bold = ""
  endif
endfun
" }}}

" SET COLOR VARIABLES: {{{
fun! s:set_color_variables()
  " Array format [<GUI COLOR/HEX >, <256-Base>, <16-Base>]
  " 16-Base is terminal's native color palette that can be alternated through
  " the terminal settings. The 16-color names are according to `:h cterm-colors`

  " BASIC COLORS:
  " color00-15 are required by all themes.
  " These are also how the terminal color palette for the target theme should be.
  " See README for theme design guideline
  "
  " An example format of the below variable's value: ['#262626', '234', 'Black']
  " Where the 1st value is HEX color for GUI Vim, 2nd value is for 256-color terminal,
  " and the color name on the right is for 16-color terminal (the actual terminal colors
  " can be different from what the color names suggest). See :h cterm-colors
  "
  " Depending on the provided color palette and current Vim, the 1st and 2nd
  " parameter might not exist, for example, on 16-color terminal, the variables below
  " only store the color names to use the terminal color palette which is the only
  " thing available therefore no need for GUI-color or 256-color.
  let s:background = get(s:palette, 'color00') + ['Black']
  let s:negative   = get(s:palette, 'color01') + ['DarkRed']
  let s:positive   = get(s:palette, 'color02') + ['DarkGreen']
  let s:olive      = get(s:palette, 'color03') + ['DarkYellow'] " string
  let s:neutral    = get(s:palette, 'color04') + ['DarkBlue']
  let s:comment    = get(s:palette, 'color05') + ['DarkMagenta']
  let s:navy       = get(s:palette, 'color06') + ['DarkCyan'] " storageclass
  let s:foreground = get(s:palette, 'color07') + ['LightGray']

  let s:nontext    = get(s:palette, 'color08') + ['DarkGray']
  let s:red        = get(s:palette, 'color09') + ['LightRed'] " import / try/catch
  let s:pink       = get(s:palette, 'color10') + ['LightGreen'] " statement, type
  let s:purple     = get(s:palette, 'color11') + ['LightYellow'] " if / conditional
  let s:accent     = get(s:palette, 'color12') + ['LightBlue']
  let s:orange     = get(s:palette, 'color13') + ['LightMagenta'] " number
  let s:blue       = get(s:palette, 'color14') + ['LightCyan'] " other keyword
  let s:highlight  = get(s:palette, 'color15') + ['White']

  let s:transparent = [s:background[0], 'none', 'none']
  " EXTENDED COLORS:
  " From here on, all colors are optional and must have default values (3rd parameter of the
  " `get` command) that point to the above basic colors in case the target theme doesn't
  " provide the extended colors. The default values should be reasonably sensible.
  " The terminal color must be provided also.

  let s:aqua       = get(s:palette, 'color16', get(s:palette, 'color14')) + ['LightCyan']
  let s:green      = get(s:palette, 'color17', get(s:palette, 'color13')) + ['LightMagenta']
  let s:wine       = get(s:palette, 'color18', get(s:palette, 'color11')) + ['LightYellow']

  " LineNumber: when set number
  let s:linenumber_fg  = get(s:palette, 'linenumber_fg', get(s:palette, 'color08')) + ['DarkGray']
  let s:linenumber_bg  = get(s:palette, 'linenumber_bg', get(s:palette, 'color00')) + ['Black']

  " Vertical Split: when there are more than 1 window side by side, ex: <C-W><C-V>
  let s:vertsplit_fg = get(s:palette, 'vertsplit_fg', get(s:palette, 'color15')) + ['White']
  let s:vertsplit_bg = get(s:palette, 'vertsplit_bg', get(s:palette, 'color00')) + ['Black']

  " Statusline: when set status=2
  let s:statusline_active_fg   = get(s:palette, 'statusline_active_fg', get(s:palette, 'color00')) + ['Black']
  let s:statusline_active_bg   = get(s:palette, 'statusline_active_bg', get(s:palette, 'color15')) + ['White']
  let s:statusline_inactive_fg = get(s:palette, 'statusline_inactive_fg', get(s:palette, 'color07')) + ['LightGray']
  let s:statusline_inactive_bg = get(s:palette, 'statusline_inactive_bg', get(s:palette, 'color08')) + ['DarkGray']


  " Cursor: in normal mode
  let s:cursor_fg = get(s:palette, 'cursor_fg', get(s:palette, 'color00')) + ['Black']
  let s:cursor_bg = get(s:palette, 'cursor_bg', get(s:palette, 'color07')) + ['LightGray']

  let s:cursorline   = get(s:palette, 'cursorline', get(s:palette, 'color00')) + ['Black']

  " CursorColumn: when set cursorcolumn
  let s:cursorcolumn = get(s:palette, 'cursorcolumn', get(s:palette, 'color00')) + ['Black']

  " CursorLine Number: when set cursorline number
  let s:cursorlinenr_fg = get(s:palette, 'cursorlinenr_fg', get(s:palette, 'color13')) + ['LightMagenta']
  let s:cursorlinenr_bg = get(s:palette, 'cursorlinenr_bg', get(s:palette, 'color00')) + ['Black']

  " Popup Menu: when <C-X><C-N> for autocomplete
  let s:popupmenu_fg = get(s:palette, 'popupmenu_fg', get(s:palette, 'color07')) + ['LightGray']
  let s:popupmenu_bg = get(s:palette, 'popupmenu_bg', get(s:palette, 'color08')) + ['DarkGray']

  " Search: ex: when * on a word
  let s:search_fg = get(s:palette, 'search_fg', get(s:palette, 'color00')) + ['Black']
  let s:search_bg = get(s:palette, 'search_bg', get(s:palette, 'color15')) + ['White']

  " Todo: ex: TODO
  let s:todo_fg    = get(s:palette, 'todo_fg', get(s:palette, 'color05')) + ['LightYellow']
  let s:todo_bg    = get(s:palette, 'todo_bg', get(s:palette, 'color00')) + ['Black']

  " Error: ex: turn spell on and have invalid words
  let s:error_fg      = get(s:palette, 'error_fg', get(s:palette, 'color01')) + ['DarkRed']
  let s:error_bg      = get(s:palette, 'error_bg', get(s:palette, 'color00')) + ['Black']

  " Match Parenthesis: selecting an opening/closing pair and the other one will be highlighted
  let s:matchparen_fg = get(s:palette, 'matchparen_fg', get(s:palette, 'color00')) + ['LightMagenta']
  let s:matchparen_bg = get(s:palette, 'matchparen_bg', get(s:palette, 'color05')) + ['Black']

  " Visual:
  let s:visual_fg = get(s:palette, 'visual_fg', get(s:palette, 'color08')) + ['White']
  let s:visual_bg = get(s:palette, 'visual_bg', get(s:palette, 'color07')) + ['Black']

  " Folded:
  let s:folded_fg = get(s:palette, 'folded_fg', get(s:palette, 'color00')) + ['Black']
  let s:folded_bg = get(s:palette, 'folded_bg', get(s:palette, 'color05')) + ['DarkYellow']

  " WildMenu: Autocomplete command, ex: :color <tab><tab>
  let s:wildmenu_fg  = get(s:palette, 'wildmenu_fg', get(s:palette, 'color00')) + ['Black']
  let s:wildmenu_bg  = get(s:palette, 'wildmenu_bg', get(s:palette, 'color06')) + ['LightGray']

  " Spelling: when spell on and there are spelling problems like this for example: papercolor. a vim color scheme
  let s:spellbad   = get(s:palette, 'spellbad', get(s:palette, 'color04')) + ['DarkRed']
  let s:spellcap   = get(s:palette, 'spellcap', get(s:palette, 'color05')) + ['DarkMagenta']
  let s:spellrare  = get(s:palette, 'spellrare', get(s:palette, 'color06')) + ['DarkYellow']
  let s:spelllocal = get(s:palette, 'spelllocal', get(s:palette, 'color01')) + ['DarkBlue']

  " Diff:
  let s:diffadd_fg    = get(s:palette, 'diffadd_fg', get(s:palette, 'color00')) + ['Black']
  let s:diffadd_bg    = get(s:palette, 'diffadd_bg', get(s:palette, 'color02')) + ['DarkGreen']

  let s:diffdelete_fg = get(s:palette, 'diffdelete_fg', get(s:palette, 'color00')) + ['Black']
  let s:diffdelete_bg = get(s:palette, 'diffdelete_bg', get(s:palette, 'color04')) + ['DarkRed']

  let s:difftext_fg   = get(s:palette, 'difftext_fg', get(s:palette, 'color00')) + ['Black']
  let s:difftext_bg   = get(s:palette, 'difftext_bg', get(s:palette, 'color06')) + ['DarkYellow']

  let s:diffchange_fg = get(s:palette, 'diffchange_fg', get(s:palette, 'color00')) + ['Black']
  let s:diffchange_bg = get(s:palette, 'diffchange_bg', get(s:palette, 'color14')) + ['LightYellow']

  " Tabline: when having tabs, ex: :tabnew
  let s:tabline_bg          = get(s:palette, 'tabline_bg', get(s:palette, 'color00')) + ['Black']
  let s:tabline_active_fg   = get(s:palette, 'tabline_active_fg', get(s:palette, 'color07')) + ['LightGray']
  let s:tabline_active_bg   = get(s:palette, 'tabline_active_bg', get(s:palette, 'color00')) + ['Black']
  let s:tabline_inactive_fg = get(s:palette, 'tabline_inactive_fg', get(s:palette, 'color07')) + ['Black']
  let s:tabline_inactive_bg = get(s:palette, 'tabline_inactive_bg', get(s:palette, 'color08')) + ['DarkMagenta']

  " Plugin: BufTabLine https://github.com/ap/vim-buftabline
  let s:buftabline_bg          = get(s:palette, 'buftabline_bg', get(s:palette, 'color00')) + ['Black']
  let s:buftabline_current_fg  = get(s:palette, 'buftabline_current_fg', get(s:palette, 'color07')) + ['LightGray']
  let s:buftabline_current_bg  = get(s:palette, 'buftabline_current_bg', get(s:palette, 'color05')) + ['DarkMagenta']
  let s:buftabline_active_fg   = get(s:palette, 'buftabline_active_fg', get(s:palette, 'color07')) + ['LightGray']
  let s:buftabline_active_bg   = get(s:palette, 'buftabline_active_bg', get(s:palette, 'color12')) + ['LightBlue']
  let s:buftabline_inactive_fg = get(s:palette, 'buftabline_inactive_fg', get(s:palette, 'color07')) + ['LightGray']
  let s:buftabline_inactive_bg = get(s:palette, 'buftabline_inactive_bg', get(s:palette, 'color00')) + ['Black']

  " Neovim terminal colors https://neovim.io/doc/user/nvim_terminal_emulator.html#nvim-terminal-emulator-configuration
  let g:terminal_color_0=get(s:palette, 'color00')[0]
  let g:terminal_color_1=get(s:palette, 'color01')[0]
  let g:terminal_color_2=get(s:palette, 'color02')[0]
  let g:terminal_color_3=get(s:palette, 'color03')[0]
  let g:terminal_color_4=get(s:palette, 'color04')[0]
  let g:terminal_color_5=get(s:palette, 'color05')[0]
  let g:terminal_color_6=get(s:palette, 'color06')[0]
  let g:terminal_color_7=get(s:palette, 'color07')[0]
  let g:terminal_color_8=get(s:palette, 'color08')[0]
  let g:terminal_color_9=get(s:palette, 'color09')[0]
  let g:terminal_color_10=get(s:palette, 'color10')[0]
  let g:terminal_color_11=get(s:palette, 'color11')[0]
  let g:terminal_color_12=get(s:palette, 'color12')[0]
  let g:terminal_color_13=get(s:palette, 'color13')[0]
  let g:terminal_color_14=get(s:palette, 'color14')[0]
  let g:terminal_color_15=get(s:palette, 'color15')[0]

endfun
" }}}

" SET SYNTAX HIGHLIGHTING: {{{

fun! s:set_syntax_highlighting()
  " Define function to set the highlighting for a given group
  "
  " NOTE: In order to reduce the overhead of conditional branches in this heavily
  " called function, we define the function differently based on the color
  " mode. This reduces A LOT of computation.
  if s:mode == s:MODE_256_COLOR || s:mode == s:MODE_TRUE_COLOR
    fun! s:HL(group, fg, bg, attr)
      if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
      endif
      if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
      endif
      if a:attr != ""
        exec 'hi ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
      endif
    endfun
  else " 16-color Terminal
    fun! s:HL(group, fg, bg, attr)
      if !empty(a:fg)
        exec 'hi ' . a:group .  ' ctermfg=' . a:fg[2]
      endif
      if !empty(a:bg)
        exec 'hi ' . a:group .  ' ctermbg=' . a:bg[2]
      endif
      if a:attr != ""
        exec 'hi ' . a:group . ' cterm=' . a:attr
      endif
    endfun
  endif

  if s:TRANSPARENT_BACKGROUND
    call s:HL("Normal", s:foreground, "",  "")
    " Switching between dark & light variant through `set background`
    " NOTE: Handle background switching right after `Normal` group because of
    " God-know-why reason. Not doing this way had caused issue before
    if s:is_dark " DARK VARIANT
      set background=dark
    else " LIGHT VARIANT
      set background=light
    endif

    call s:HL("NonText", s:nontext, "", "")
    call s:HL("LineNr", s:linenumber_fg, "", "")
    call s:HL("Conceal", s:linenumber_fg, "", "")
    call s:HL("VertSplit", s:vertsplit_fg, "", "none")
    call s:HL("FoldColumn", s:folded_fg, s:transparent, "none")
  else
    call s:HL("Normal", s:foreground, s:background, "")
    " Switching between dark & light variant through `set background`
    if s:is_dark " DARK VARIANT
      set background=dark
    else " LIGHT VARIANT
      set background=light
    endif

    call s:HL("NonText", s:nontext, s:background, "")
    call s:HL("LineNr", s:linenumber_fg, s:linenumber_bg, "")
    call s:HL("Conceal", s:linenumber_fg, s:linenumber_bg, "")
    call s:HL("VertSplit", s:vertsplit_bg, s:vertsplit_fg, "")
    call s:HL("FoldColumn", s:folded_fg, s:background, "none")
  endif

  call s:HL("Cursor", s:cursor_fg, s:cursor_bg, "")
  call s:HL("SpecialKey", s:nontext, "", "")
  call s:HL("Search", s:search_fg, s:search_bg, "")
  call s:HL("StatusLine", s:statusline_active_bg, s:statusline_active_fg, "")
  call s:HL("StatusLineNC", s:statusline_inactive_bg, s:statusline_inactive_fg, "")
  call s:HL("Visual", s:visual_fg, s:visual_bg, "")
  call s:HL("Directory", s:blue, "", "")
  call s:HL("ModeMsg", s:olive, "", "")
  call s:HL("MoreMsg", s:olive, "", "")
  call s:HL("Question", s:olive, "", "")
  call s:HL("WarningMsg", s:pink, "", "")
  call s:HL("MatchParen", s:matchparen_fg, s:matchparen_bg, "")
  call s:HL("Folded", s:folded_fg, s:folded_bg, "")
  call s:HL("WildMenu", s:wildmenu_fg, s:wildmenu_bg, s:bold)

  if version >= 700
    call s:HL("CursorLine", "", s:cursorline, "none")
    if s:mode == s:MODE_16_COLOR
      call s:HL("CursorLineNr", s:cursorlinenr_fg, s:cursorlinenr_bg, "")
    else
      call s:HL("CursorLineNr", s:cursorlinenr_fg, s:cursorlinenr_bg, "none")
    endif
    call s:HL("CursorColumn", "", s:cursorcolumn, "none")
    call s:HL("PMenu", s:popupmenu_fg, s:popupmenu_bg, "none")
    call s:HL("PMenuSel", s:popupmenu_fg, s:popupmenu_bg, "reverse")
    if s:TRANSPARENT_BACKGROUND
      call s:HL("SignColumn", s:green, "", "none")
    else
      call s:HL("SignColumn", s:green, s:background, "none")
    endif
  end
  if version >= 703
    call s:HL("ColorColumn", "", s:cursorcolumn, "none")
  end

  call s:HL("TabLine", s:tabline_inactive_fg, s:tabline_inactive_bg, "none")
  call s:HL("TabLineFill", s:tabline_bg, s:tabline_bg, "none")
  call s:HL("TabLineSel", s:tabline_active_fg, s:tabline_active_bg, "none")

  call s:HL("BufTabLineCurrent", s:buftabline_current_fg, s:buftabline_current_bg, "None")
  call s:HL("BufTabLineActive", s:buftabline_active_fg, s:buftabline_active_bg, "None")
  call s:HL("BufTabLineHidden", s:buftabline_inactive_fg, s:buftabline_inactive_bg, "None")
  call s:HL("BufTabLineFill", "", s:buftabline_bg, "None")

  " Standard Group Highlighting:
  call s:HL("Comment", s:comment, "", "")

  call s:HL("Constant", s:orange, "", "")
  call s:HL("String", s:olive, "", "")
  call s:HL("Character", s:olive, "", "")
  call s:HL("Number", s:orange, "", "")
  call s:HL("Boolean", s:green, "", s:bold)
  call s:HL("Float", s:orange, "", "")

  call s:HL("Identifier", s:navy, "", "")
  call s:HL("Function", s:foreground, "", "")

  call s:HL("Statement", s:pink, "", "none")
  call s:HL("Conditional", s:purple, "", s:bold)
  call s:HL("Repeat", s:purple, "", s:bold)
  call s:HL("Label", s:blue, "", "")
  call s:HL("Operator", s:aqua, "", "none")
  call s:HL("Keyword", s:blue, "", "")
  call s:HL("Exception", s:red, "", "")

  call s:HL("PreProc", s:blue, "", "")
  call s:HL("Include", s:red, "", "")
  call s:HL("Define", s:blue, "", "")
  call s:HL("Macro", s:blue, "", "")
  call s:HL("PreCondit", s:aqua, "", "")

  call s:HL("Type", s:pink, "", s:bold)
  call s:HL("StorageClass", s:navy, "", s:bold)
  call s:HL("Structure", s:blue, "", s:bold)
  call s:HL("Typedef", s:pink, "", s:bold)

  call s:HL("Special", s:foreground, "", "")
  call s:HL("SpecialChar", s:foreground, "", "")
  call s:HL("Tag", s:green, "", "")
  call s:HL("Delimiter",s:aqua, "", "")
  call s:HL("SpecialComment", s:comment, "", s:bold)
  call s:HL("Debug", s:orange, "", "")

  call s:HL("Error", s:error_fg, s:error_bg, "")
  call s:HL("Todo", s:todo_fg, s:todo_bg, s:bold)

  call s:HL("Title", s:comment, "", "")
  call s:HL("Global", s:blue, "", "")


  " Extension {{{
  " VimL Highlighting
  call s:HL("vimCommand", s:pink, "", "")
  call s:HL("vimVar", s:navy, "", "")
  call s:HL("vimFuncKey", s:pink, "", "")
  call s:HL("vimFunction", s:blue, "", s:bold)
  call s:HL("vimNotFunc", s:pink, "", "")
  call s:HL("vimMap", s:red, "", "")
  call s:HL("vimAutoEvent", s:aqua, "", s:bold)
  call s:HL("vimMapModKey", s:aqua, "", "")
  call s:HL("vimFuncName", s:purple, "", "")
  call s:HL("vimIsCommand", s:foreground, "", "")
  call s:HL("vimFuncVar", s:aqua, "", "")
  call s:HL("vimLet", s:red, "", "")
  call s:HL("vimContinue", s:aqua, "", "")
  call s:HL("vimMapRhsExtend", s:foreground, "", "")
  call s:HL("vimCommentTitle", s:comment, "", s:bold)
  call s:HL("vimBracket", s:aqua, "", "")
  call s:HL("vimParenSep", s:aqua, "", "")
  call s:HL("vimNotation", s:aqua, "", "")
  call s:HL("vimOper", s:foreground, "", "")
  call s:HL("vimOperParen", s:foreground, "", "")
  call s:HL("vimSynType", s:purple, "", "")
  call s:HL("vimSynReg", s:pink, "", "none")
  call s:HL("vimSynKeyRegion", s:green, "", "")
  call s:HL("vimSynRegOpt", s:blue, "", "")
  call s:HL("vimSynMtchOpt", s:blue, "", "")
  call s:HL("vimSynContains", s:pink, "", "")
  call s:HL("vimGroupName", s:foreground, "", "")
  call s:HL("vimGroupList", s:foreground, "", "")
  call s:HL("vimHiGroup", s:foreground, "", "")
  call s:HL("vimGroup", s:navy, "", s:bold)
  call s:HL("vimOnlyOption", s:blue, "", "")

  " Makefile Highlighting
  call s:HL("makeIdent", s:blue, "", "")
  call s:HL("makeSpecTarget", s:olive, "", "")
  call s:HL("makeTarget", s:red, "", "")
  call s:HL("makeStatement", s:aqua, "", s:bold)
  call s:HL("makeCommands", s:foreground, "", "")
  call s:HL("makeSpecial", s:orange, "", s:bold)

  " CMake Highlighting
  call s:HL("cmakeStatement", s:pink, "", "")
  call s:HL("cmakeArguments", s:foreground, "", "")
  call s:HL("cmakeVariableValue", s:blue, "", "")
  call s:HL("cmakeOperators", s:red, "", "")

  " C Highlighting
  call s:HL("cType", s:pink, "", s:bold)
  call s:HL("cFormat", s:olive, "", "")
  call s:HL("cStorageClass", s:navy, "", s:bold)

  call s:HL("cBoolean", s:green, "", "")
  call s:HL("cCharacter", s:olive, "", "")
  call s:HL("cConstant", s:green, "", s:bold)
  call s:HL("cConditional", s:purple, "", s:bold)
  call s:HL("cSpecial", s:olive, "", s:bold)
  call s:HL("cDefine", s:blue, "", "")
  call s:HL("cNumber", s:orange, "", "")
  call s:HL("cPreCondit", s:aqua, "", "")
  call s:HL("cRepeat", s:purple, "", s:bold)
  call s:HL("cLabel",s:aqua, "", "")
  " call s:HL("cAnsiFunction",s:aqua, "", s:bold)
  " call s:HL("cAnsiName",s:pink, "", "")
  call s:HL("cDelimiter",s:blue, "", "")
  " call s:HL("cBraces",s:foreground, "", "")
  " call s:HL("cIdentifier",s:blue, s:pink, "")
  " call s:HL("cSemiColon","", s:blue, "")
  call s:HL("cOperator",s:aqua, "", "")
  " call s:HL("cStatement",s:pink, "", "")
  " call s:HL("cTodo", s:comment, "", s:bold)
  " call s:HL("cStructure", s:blue, "", s:bold)
  call s:HL("cCustomParen", s:foreground, "", "")
  " call s:HL("cCustomFunc", s:foreground, "", "")
  " call s:HL("cUserFunction",s:blue, "", s:bold)
  call s:HL("cOctalZero", s:purple, "", s:bold)
  if s:Language_Options('c.highlight_builtins') == 1
    call s:HL("cFunction", s:blue, "", "")
  else
    call s:HL("cFunction", s:foreground, "", "")
  endif

  " CPP highlighting
  call s:HL("cppBoolean", s:navy, "", "")
  call s:HL("cppSTLnamespace", s:purple, "", "")
  call s:HL("cppSTLexception", s:pink, "", "")
  call s:HL("cppSTLfunctional", s:foreground, "", s:bold)
  call s:HL("cppSTLiterator", s:foreground, "", s:bold)
  call s:HL("cppExceptions", s:red, "", "")
  call s:HL("cppStatement", s:blue, "", "")
  call s:HL("cppStorageClass", s:navy, "", s:bold)
  call s:HL("cppAccess",s:blue, "", "")
  if s:Language_Options('cpp.highlight_standard_library') == 1
    call s:HL("cppSTLconstant", s:green, "", s:bold)
    call s:HL("cppSTLtype", s:pink, "", s:bold)
    call s:HL("cppSTLfunction", s:blue, "", "")
    call s:HL("cppSTLios", s:olive, "", s:bold)
  else
    call s:HL("cppSTLconstant", s:foreground, "", "")
    call s:HL("cppSTLtype", s:foreground, "", "")
    call s:HL("cppSTLfunction", s:foreground, "", "")
    call s:HL("cppSTLios", s:foreground, "", "")
  endif
  " call s:HL("cppSTL",s:blue, "", "")


  " Lex highlighting
  call s:HL("lexCFunctions", s:foreground, "", "")
  call s:HL("lexAbbrv", s:purple, "", "")
  call s:HL("lexAbbrvRegExp", s:aqua, "", "")
  call s:HL("lexAbbrvComment", s:comment, "", "")
  call s:HL("lexBrace", s:navy, "", "")
  call s:HL("lexPat", s:aqua, "", "")
  call s:HL("lexPatComment", s:comment, "", "")
  call s:HL("lexPatTag", s:orange, "", "")
  " call s:HL("lexPatBlock", s:foreground, "", s:bold)
  call s:HL("lexSlashQuote", s:foreground, "", "")
  call s:HL("lexSep", s:foreground, "", "")
  call s:HL("lexStartState", s:orange, "", "")
  call s:HL("lexPatTagZone", s:olive, "", s:bold)
  call s:HL("lexMorePat", s:olive, "", s:bold)
  call s:HL("lexOptions", s:olive, "", s:bold)
  call s:HL("lexPatString", s:olive, "", "")

  " Yacc highlighting
  call s:HL("yaccNonterminal", s:navy, "", "")
  call s:HL("yaccDelim", s:orange, "", "")
  call s:HL("yaccInitKey", s:aqua, "", "")
  call s:HL("yaccInit", s:navy, "", "")
  call s:HL("yaccKey", s:purple, "", "")
  call s:HL("yaccVar", s:aqua, "", "")

  " NASM highlighting
  call s:HL("nasmStdInstruction", s:navy, "", "")
  call s:HL("nasmGen08Register", s:aqua, "", "")
  call s:HL("nasmGen16Register", s:aqua, "", "")
  call s:HL("nasmGen32Register", s:aqua, "", "")
  call s:HL("nasmGen64Register", s:aqua, "", "")
  call s:HL("nasmHexNumber", s:purple, "", "")
  call s:HL("nasmStorage", s:aqua, "", s:bold)
  call s:HL("nasmLabel", s:pink, "", "")
  call s:HL("nasmDirective", s:blue, "", s:bold)
  call s:HL("nasmLocalLabel", s:orange, "", "")

  " GAS highlighting
  call s:HL("gasSymbol", s:pink, "", "")
  call s:HL("gasDirective", s:blue, "", s:bold)
  call s:HL("gasOpcode_386_Base", s:navy, "", "")
  call s:HL("gasDecimalNumber", s:purple, "", "")
  call s:HL("gasSymbolRef", s:pink, "", "")
  call s:HL("gasRegisterX86", s:blue, "", "")
  call s:HL("gasOpcode_P6_Base", s:navy, "", "")
  call s:HL("gasDirectiveStore", s:foreground, "", s:bold)

  " MIPS highlighting
  call s:HL("mipsInstruction", s:pink, "", "")
  call s:HL("mipsRegister", s:navy, "", "")
  call s:HL("mipsLabel", s:aqua, "", s:bold)
  call s:HL("mipsDirective", s:purple, "", s:bold)

  " Shell/Bash highlighting
  call s:HL("bashStatement", s:foreground, "", s:bold)
  call s:HL("shDerefVar", s:aqua, "", s:bold)
  call s:HL("shDerefSimple", s:aqua, "", "")
  call s:HL("shFunction", s:orange, "", s:bold)
  call s:HL("shStatement", s:foreground, "", "")
  call s:HL("shLoop", s:purple, "", s:bold)
  call s:HL("shQuote", s:olive, "", "")
  call s:HL("shCaseEsac", s:aqua, "", s:bold)
  call s:HL("shSnglCase", s:purple, "", "none")
  call s:HL("shFunctionOne", s:navy, "", "")
  call s:HL("shCase", s:navy, "", "")
  call s:HL("shSetList", s:navy, "", "")
  " @see Dockerfile Highlighting section for more sh*

  " HTML Highlighting
  call s:HL("htmlTitle", s:green, "", s:bold)
  call s:HL("htmlH1", s:green, "", s:bold)
  call s:HL("htmlH2", s:aqua, "", s:bold)
  call s:HL("htmlH3", s:purple, "", s:bold)
  call s:HL("htmlH4", s:orange, "", s:bold)
  call s:HL("htmlTag", s:comment, "", "")
  call s:HL("htmlTagName", s:wine, "", "")
  call s:HL("htmlArg", s:pink, "", "")
  call s:HL("htmlEndTag", s:comment, "", "")
  call s:HL("htmlString", s:blue, "", "")
  call s:HL("htmlScriptTag", s:comment, "", "")
  call s:HL("htmlBold", s:foreground, "", s:bold)
  call s:HL("htmlItalic", s:comment, "", s:bold)
  call s:HL("htmlBoldItalic", s:navy, "", s:bold)
  " call s:HL("htmlLink", s:blue, "", s:bold)
  call s:HL("htmlTagN", s:wine, "", s:bold)
  call s:HL("htmlSpecialTagName", s:wine, "", "")
  call s:HL("htmlComment", s:comment, "", "")
  call s:HL("htmlCommentPart", s:comment, "", "")

  " CSS Highlighting
  call s:HL("cssIdentifier", s:pink, "", "")
  call s:HL("cssPositioningProp", s:foreground, "", "")
  call s:HL("cssNoise", s:foreground, "", "")
  call s:HL("cssBoxProp", s:foreground, "", "")
  call s:HL("cssTableAttr", s:purple, "", "")
  call s:HL("cssPositioningAttr", s:navy, "", "")
  call s:HL("cssValueLength", s:orange, "", "")
  call s:HL("cssFunctionName", s:blue, "", "")
  call s:HL("cssUnitDecorators", s:aqua, "", "")
  call s:HL("cssColor", s:blue, "", s:bold)
  call s:HL("cssBraces", s:pink, "", "")
  call s:HL("cssBackgroundProp", s:foreground, "", "")
  call s:HL("cssTextProp", s:foreground, "", "")
  call s:HL("cssDimensionProp", s:foreground, "", "")
  call s:HL("cssClassName", s:pink, "", "")

  " Markdown Highlighting
  call s:HL("markdownHeadingRule", s:pink, "", s:bold)
  call s:HL("markdownH1", s:pink, "", s:bold)
  call s:HL("markdownH2", s:orange, "", s:bold)
  call s:HL("markdownBlockquote", s:pink, "", "")
  call s:HL("markdownCodeBlock", s:olive, "", "")
  call s:HL("markdownCode", s:olive, "", "")
  call s:HL("markdownLink", s:blue, "", s:bold)
  call s:HL("markdownUrl", s:blue, "", "")
  call s:HL("markdownLinkText", s:pink, "", "")
  call s:HL("markdownLinkTextDelimiter", s:purple, "", "")
  call s:HL("markdownLinkDelimiter", s:purple, "", "")
  call s:HL("markdownCodeDelimiter", s:blue, "", "")

  call s:HL("mkdCode", s:olive, "", "")
  call s:HL("mkdLink", s:blue, "", s:bold)
  call s:HL("mkdURL", s:comment, "", "")
  call s:HL("mkdString", s:foreground, "", "")
  call s:HL("mkdBlockQuote", s:foreground, s:popupmenu_bg, "")
  call s:HL("mkdLinkTitle", s:pink, "", "")
  call s:HL("mkdDelimiter", s:aqua, "", "")
  call s:HL("mkdRule", s:pink, "", "")

  " reStructuredText Highlighting
  call s:HL("rstSections", s:pink, "", s:bold)
  call s:HL("rstDelimiter", s:pink, "", s:bold)
  call s:HL("rstExplicitMarkup", s:pink, "", s:bold)
  call s:HL("rstDirective", s:blue, "", "")
  call s:HL("rstHyperlinkTarget", s:green, "", "")
  call s:HL("rstExDirective", s:foreground, "", "")
  call s:HL("rstInlineLiteral", s:olive, "", "")
  call s:HL("rstInterpretedTextOrHyperlinkReference", s:blue, "", "")

  " Python Highlighting
  call s:HL("pythonImport", s:pink, "", s:bold)
  call s:HL("pythonExceptions", s:red, "", "")
  call s:HL("pythonException", s:purple, "", s:bold)
  call s:HL("pythonInclude", s:red, "", "")
  call s:HL("pythonStatement", s:pink, "", "")
  call s:HL("pythonConditional", s:purple, "", s:bold)
  call s:HL("pythonRepeat", s:purple, "", s:bold)
  call s:HL("pythonFunction", s:aqua, "", s:bold)
  call s:HL("pythonPreCondit", s:purple, "", "")
  call s:HL("pythonExClass", s:orange, "", "")
  call s:HL("pythonOperator", s:purple, "", s:bold)
  call s:HL("pythonBuiltin", s:foreground, "", "")
  call s:HL("pythonDecorator", s:orange, "", "")

  call s:HL("pythonString", s:olive, "", "")
  call s:HL("pythonEscape", s:olive, "", s:bold)
  call s:HL("pythonStrFormatting", s:olive, "", s:bold)

  call s:HL("pythonBoolean", s:green, "", s:bold)
  call s:HL("pythonExClass", s:red, "", "")
  call s:HL("pythonBytesEscape", s:olive, "", s:bold)
  call s:HL("pythonDottedName", s:purple, "", "")
  call s:HL("pythonStrFormat", s:foreground, "", "")

  if s:Language_Options('python.highlight_builtins') == 1
    call s:HL("pythonBuiltinFunc", s:blue, "", "")
    call s:HL("pythonBuiltinObj", s:red, "", "")
  else
    call s:HL("pythonBuiltinFunc", s:foreground, "", "")
    call s:HL("pythonBuiltinObj", s:foreground, "", "")
  endif

  " Java Highlighting
  call s:HL("javaExternal", s:pink, "", "")
  call s:HL("javaAnnotation", s:orange, "", "")
  call s:HL("javaTypedef", s:aqua, "", "")
  call s:HL("javaClassDecl", s:aqua, "", s:bold)
  call s:HL("javaScopeDecl", s:blue, "", s:bold)
  call s:HL("javaStorageClass", s:navy, "", s:bold)
  call s:HL("javaBoolean", s:green, "", s:bold)
  call s:HL("javaConstant", s:blue, "", "")
  call s:HL("javaCommentTitle", s:wine, "", "")
  call s:HL("javaDocTags", s:aqua, "", "")
  call s:HL("javaDocComment", s:comment, "", "")
  call s:HL("javaDocParam", s:foreground, "", "")
  call s:HL("javaStatement", s:pink, "", "")

  " JavaScript Highlighting
  call s:HL("javaScriptBraces", s:blue, "", "")
  call s:HL("javaScriptParens", s:blue, "", "")
  call s:HL("javaScriptIdentifier", s:pink, "", "")
  call s:HL("javaScriptFunction", s:blue, "", s:bold)
  call s:HL("javaScriptConditional", s:purple, "", s:bold)
  call s:HL("javaScriptRepeat", s:purple, "", s:bold)
  call s:HL("javaScriptBoolean", s:green, "", s:bold)
  call s:HL("javaScriptNumber", s:orange, "", "")
  call s:HL("javaScriptMember", s:navy, "", "")
  call s:HL("javaScriptReserved", s:navy, "", "")
  call s:HL("javascriptNull", s:comment, "", s:bold)
  call s:HL("javascriptGlobal", s:foreground, "", "")
  call s:HL("javascriptStatement", s:pink, "", "")
  call s:HL("javaScriptMessage", s:foreground, "", "")
  call s:HL("javaScriptMember", s:foreground, "", "")

  " @target https://github.com/pangloss/vim-javascript
  call s:HL("jsFuncParens", s:blue, "", "")
  call s:HL("jsFuncBraces", s:blue, "", "")
  call s:HL("jsParens", s:blue, "", "")
  call s:HL("jsBraces", s:blue, "", "")
  call s:HL("jsNoise", s:blue, "", "")

  " Json Highlighting
  " @target https://github.com/elzr/vim-json
  call s:HL("jsonKeyword", s:blue, "", "")
  call s:HL("jsonString", s:olive, "", "")
  call s:HL("jsonQuote", s:comment, "", "")
  call s:HL("jsonNoise", s:foreground, "", "")
  call s:HL("jsonKeywordMatch", s:foreground, "", "")
  call s:HL("jsonBraces", s:foreground, "", "")
  call s:HL("jsonNumber", s:orange, "", "")
  call s:HL("jsonNull", s:purple, "", s:bold)
  call s:HL("jsonBoolean", s:green, "", s:bold)
  call s:HL("jsonCommentError", s:pink, s:background , "")

  " Go Highlighting
  call s:HL("goDirective", s:red, "", "")
  call s:HL("goDeclaration", s:blue, "", s:bold)
  call s:HL("goStatement", s:pink, "", "")
  call s:HL("goConditional", s:purple, "", s:bold)
  call s:HL("goConstants", s:orange, "", "")
  call s:HL("goFunction", s:orange, "", "")
  " call s:HL("goTodo", s:comment, "", s:bold)
  call s:HL("goDeclType", s:blue, "", "")
  call s:HL("goBuiltins", s:purple, "", "")

  " Systemtap Highlighting
  " call s:HL("stapBlock", s:comment, "", "none")
  call s:HL("stapComment", s:comment, "", "none")
  call s:HL("stapProbe", s:aqua, "", s:bold)
  call s:HL("stapStat", s:navy, "", s:bold)
  call s:HL("stapFunc", s:foreground, "", "")
  call s:HL("stapString", s:olive, "", "")
  call s:HL("stapTarget", s:navy, "", "")
  call s:HL("stapStatement", s:pink, "", "")
  call s:HL("stapType", s:pink, "", s:bold)
  call s:HL("stapSharpBang", s:comment, "", "")
  call s:HL("stapDeclaration", s:pink, "", "")
  call s:HL("stapCMacro", s:blue, "", "")

  " DTrace Highlighting
  call s:HL("dtraceProbe", s:blue, "", "")
  call s:HL("dtracePredicate", s:purple, "", s:bold)
  call s:HL("dtraceComment", s:comment, "", "")
  call s:HL("dtraceFunction", s:foreground, "", "")
  call s:HL("dtraceAggregatingFunction", s:blue, "", s:bold)
  call s:HL("dtraceStatement", s:navy, "", s:bold)
  call s:HL("dtraceIdentifier", s:pink, "", "")
  call s:HL("dtraceOption", s:pink, "", "")
  call s:HL("dtraceConstant", s:orange, "", "")
  call s:HL("dtraceType", s:pink, "", s:bold)

  " PlantUML Highlighting
  call s:HL("plantumlPreProc", s:orange, "", s:bold)
  call s:HL("plantumlDirectedOrVerticalArrowRL", s:pink, "", "")
  call s:HL("plantumlDirectedOrVerticalArrowLR", s:pink, "", "")
  call s:HL("plantumlString", s:olive, "", "")
  call s:HL("plantumlActivityThing", s:purple, "", "")
  call s:HL("plantumlText", s:navy, "", "")
  call s:HL("plantumlClassPublic", s:olive, "", s:bold)
  call s:HL("plantumlClassPrivate", s:red, "", "")
  call s:HL("plantumlColonLine", s:orange, "", "")
  call s:HL("plantumlClass", s:navy, "", "")
  call s:HL("plantumlHorizontalArrow", s:pink, "", "")
  call s:HL("plantumlTypeKeyword", s:blue, "", s:bold)
  call s:HL("plantumlKeyword", s:pink, "", s:bold)

  call s:HL("plantumlType", s:blue, "", s:bold)
  call s:HL("plantumlBlock", s:pink, "", s:bold)
  call s:HL("plantumlPreposition", s:orange, "", "")
  call s:HL("plantumlLayout", s:blue, "", s:bold)
  call s:HL("plantumlNote", s:orange, "", "")
  call s:HL("plantumlLifecycle", s:aqua, "", "")
  call s:HL("plantumlParticipant", s:foreground, "", s:bold)


  " Haskell Highlighting
  call s:HL("haskellType", s:aqua, "", s:bold)
  call s:HL("haskellIdentifier", s:orange, "", s:bold)
  call s:HL("haskellOperators", s:pink, "", "")
  call s:HL("haskellWhere", s:foreground, "", s:bold)
  call s:HL("haskellDelimiter", s:aqua, "", "")
  call s:HL("haskellImportKeywords", s:pink, "", "")
  call s:HL("haskellStatement", s:purple, "", s:bold)


  " SQL/MySQL Highlighting
  call s:HL("sqlStatement", s:pink, "", s:bold)
  call s:HL("sqlType", s:blue, "", s:bold)
  call s:HL("sqlKeyword", s:pink, "", "")
  call s:HL("sqlOperator", s:aqua, "", "")
  call s:HL("sqlSpecial", s:green, "", s:bold)

  call s:HL("mysqlVariable", s:olive, "", s:bold)
  call s:HL("mysqlType", s:blue, "", s:bold)
  call s:HL("mysqlKeyword", s:pink, "", "")
  call s:HL("mysqlOperator", s:aqua, "", "")
  call s:HL("mysqlSpecial", s:green, "", s:bold)


  " Octave/MATLAB Highlighting
  call s:HL("octaveVariable", s:foreground, "", "")
  call s:HL("octaveDelimiter", s:pink, "", "")
  call s:HL("octaveQueryVar", s:foreground, "", "")
  call s:HL("octaveSemicolon", s:purple, "", "")
  call s:HL("octaveFunction", s:navy, "", "")
  call s:HL("octaveSetVar", s:blue, "", "")
  call s:HL("octaveUserVar", s:foreground, "", "")
  call s:HL("octaveArithmeticOperator", s:aqua, "", "")
  call s:HL("octaveBeginKeyword", s:purple, "", s:bold)
  call s:HL("octaveElseKeyword", s:purple, "", s:bold)
  call s:HL("octaveEndKeyword", s:purple, "", s:bold)
  call s:HL("octaveStatement", s:pink, "", "")

  " Ruby Highlighting
  call s:HL("rubyModule", s:navy, "", s:bold)
  call s:HL("rubyClass", s:pink, "", s:bold)
  call s:HL("rubyPseudoVariable", s:comment, "", s:bold)
  call s:HL("rubyKeyword", s:pink, "", "")
  call s:HL("rubyInstanceVariable", s:purple, "", "")
  call s:HL("rubyFunction", s:foreground, "", s:bold)
  call s:HL("rubyDefine", s:pink, "", "")
  call s:HL("rubySymbol", s:aqua, "", "")
  call s:HL("rubyConstant", s:blue, "", "")
  call s:HL("rubyAccess", s:navy, "", "")
  call s:HL("rubyAttribute", s:green, "", "")
  call s:HL("rubyInclude", s:red, "", "")
  call s:HL("rubyLocalVariableOrMethod", s:orange, "", "")
  call s:HL("rubyCurlyBlock", s:foreground, "", "")
  call s:HL("rubyCurlyBlockDelimiter", s:aqua, "", "")
  call s:HL("rubyArrayDelimiter", s:aqua, "", "")
  call s:HL("rubyStringDelimiter", s:olive, "", "")
  call s:HL("rubyInterpolationDelimiter", s:orange, "", "")
  call s:HL("rubyConditional", s:purple, "", s:bold)
  call s:HL("rubyRepeat", s:purple, "", s:bold)
  call s:HL("rubyControl", s:purple, "", s:bold)
  call s:HL("rubyException", s:purple, "", s:bold)
  call s:HL("rubyExceptional", s:purple, "", s:bold)
  call s:HL("rubyBoolean", s:green, "", s:bold)

  " Fortran Highlighting
  call s:HL("fortranUnitHeader", s:foreground, "", s:bold)
  call s:HL("fortranType", s:pink, "", s:bold)
  call s:HL("fortranStructure", s:blue, "", s:bold)
  call s:HL("fortranStorageClass", s:navy, "", s:bold)
  call s:HL("fortranStorageClassR", s:navy, "", s:bold)
  call s:HL("fortranKeyword", s:pink, "", "")
  call s:HL("fortranReadWrite", s:blue, "", "")
  call s:HL("fortranIO", s:navy, "", "")

  " R Highlighting
  call s:HL("rType", s:blue, "", "")
  call s:HL("rArrow", s:pink, "", "")
  call s:HL("rDollar", s:blue, "", "")

  " XXD Highlighting
  call s:HL("xxdAddress", s:navy, "", "")
  call s:HL("xxdSep", s:pink, "", "")
  call s:HL("xxdAscii", s:pink, "", "")
  call s:HL("xxdDot", s:aqua, "", "")

  " PHP Highlighting
  call s:HL("phpIdentifier", s:foreground, "", "")
  call s:HL("phpVarSelector", s:pink, "", "")
  call s:HL("phpKeyword", s:blue, "", "")
  call s:HL("phpRepeat", s:purple, "", s:bold)
  call s:HL("phpConditional", s:purple, "", s:bold)
  call s:HL("phpStatement", s:pink, "", "")
  call s:HL("phpAssignByRef", s:aqua, "", s:bold)
  call s:HL("phpSpecialFunction", s:blue, "", "")
  call s:HL("phpFunctions", s:blue, "", "")
  call s:HL("phpComparison", s:aqua, "", "")
  call s:HL("phpBackslashSequences", s:olive, "", s:bold)
  call s:HL("phpMemberSelector", s:blue, "", "")
  call s:HL("phpStorageClass", s:purple, "", s:bold)
  call s:HL("phpDefine", s:navy, "", "")
  call s:HL("phpIntVar", s:navy, "",s:bold)

  " Perl Highlighting
  call s:HL("perlFiledescRead", s:green, "", "")
  call s:HL("perlMatchStartEnd", s:pink, "", "")
  call s:HL("perlStatementFlow", s:pink, "", "")
  call s:HL("perlStatementStorage", s:pink, "", "")
  call s:HL("perlFunction", s:pink, "", s:bold)
  call s:HL("perlMethod", s:foreground, "", "")
  call s:HL("perlStatementFiledesc", s:orange, "", "")
  call s:HL("perlVarPlain", s:navy, "", "")
  call s:HL("perlSharpBang", s:comment, "", "")
  call s:HL("perlStatementInclude", s:aqua, "", s:bold)
  call s:HL("perlStatementScalar", s:purple, "", "")
  call s:HL("perlSubName", s:aqua, "", s:bold)
  call s:HL("perlSpecialString", s:olive, "", s:bold)

  " Pascal Highlighting
  call s:HL("pascalType", s:pink, "", s:bold)
  call s:HL("pascalStatement", s:blue, "", s:bold)
  call s:HL("pascalPredefined", s:pink, "", "")
  call s:HL("pascalFunction", s:foreground, "", "")
  call s:HL("pascalStruct", s:navy, "", s:bold)
  call s:HL("pascalOperator", s:aqua, "", s:bold)
  call s:HL("pascalPreProc", s:green, "", "")
  call s:HL("pascalAcces", s:navy, "", s:bold)

  " Lua Highlighting
  call s:HL("luaFunc", s:foreground, "", "")
  call s:HL("luaIn", s:blue, "", s:bold)
  call s:HL("luaFunction", s:pink, "", "")
  call s:HL("luaStatement", s:blue, "", "")
  call s:HL("luaRepeat", s:blue, "", s:bold)
  call s:HL("luaCondStart", s:purple, "", s:bold)
  call s:HL("luaTable", s:aqua, "", s:bold)
  call s:HL("luaConstant", s:green, "", s:bold)
  call s:HL("luaElse", s:purple, "", s:bold)
  call s:HL("luaCondElseif", s:purple, "", s:bold)
  call s:HL("luaCond", s:purple, "", s:bold)
  call s:HL("luaCondEnd", s:purple, "", "")

  " Clojure highlighting:
  call s:HL("clojureConstant", s:blue, "", "")
  call s:HL("clojureBoolean", s:orange, "", "")
  call s:HL("clojureCharacter", s:olive, "", "")
  call s:HL("clojureKeyword", s:pink, "", "")
  call s:HL("clojureNumber", s:orange, "", "")
  call s:HL("clojureString", s:olive, "", "")
  call s:HL("clojureRegexp", s:purple, "", "")
  call s:HL("clojureRegexpEscape", s:pink, "", "")
  call s:HL("clojureParen", s:aqua, "", "")
  call s:HL("clojureVariable", s:olive, "", "")
  call s:HL("clojureCond", s:blue, "", "")
  call s:HL("clojureDefine", s:blue, "", s:bold)
  call s:HL("clojureException", s:red, "", "")
  call s:HL("clojureFunc", s:navy, "", "")
  call s:HL("clojureMacro", s:blue, "", "")
  call s:HL("clojureRepeat", s:blue, "", "")
  call s:HL("clojureSpecial", s:blue, "", s:bold)
  call s:HL("clojureQuote", s:blue, "", "")
  call s:HL("clojureUnquote", s:blue, "", "")
  call s:HL("clojureMeta", s:blue, "", "")
  call s:HL("clojureDeref", s:blue, "", "")
  call s:HL("clojureAnonArg", s:blue, "", "")
  call s:HL("clojureRepeat", s:blue, "", "")
  call s:HL("clojureDispatch", s:aqua, "", "")

  " Dockerfile Highlighting
  " @target https://github.com/docker/docker/tree/master/contrib/syntax/vim
  call s:HL("dockerfileKeyword", s:blue, "", "")
  call s:HL("shDerefVar", s:purple, "", s:bold)
  call s:HL("shOperator", s:aqua, "", "")
  call s:HL("shOption", s:navy, "", "")
  call s:HL("shLine", s:foreground, "", "")
  call s:HL("shWrapLineOperator", s:pink, "", "")

  " NGINX Highlighting
  " @target https://github.com/evanmiller/nginx-vim-syntax
  call s:HL("ngxDirectiveBlock", s:pink, "", s:bold)
  call s:HL("ngxDirective", s:blue, "", "none")
  call s:HL("ngxDirectiveImportant", s:blue, "", s:bold)
  call s:HL("ngxString", s:olive, "", "")
  call s:HL("ngxVariableString", s:purple, "", "")
  call s:HL("ngxVariable", s:purple, "", "none")

  " Yaml Highlighting
  call s:HL("yamlBlockMappingKey", s:blue, "", "")
  call s:HL("yamlKeyValueDelimiter", s:pink, "", "")
  call s:HL("yamlBlockCollectionItemStart", s:pink, "", "")

  " Qt QML Highlighting
  call s:HL("qmlObjectLiteralType", s:pink, "", "")
  call s:HL("qmlReserved", s:purple, "", "")
  call s:HL("qmlBindingProperty", s:navy, "", "")
  call s:HL("qmlType", s:navy, "", "")

  " Dosini Highlighting
  call s:HL("dosiniHeader", s:pink, "", "")
  call s:HL("dosiniLabel", s:blue, "", "")

  " Mail highlighting
  call s:HL("mailHeaderKey", s:blue, "", "")
  call s:HL("mailHeaderEmail", s:purple, "", "")
  call s:HL("mailSubject", s:pink, "", "")
  call s:HL("mailHeader", s:comment, "", "")
  call s:HL("mailURL", s:aqua, "", "")
  call s:HL("mailEmail", s:purple, "", "")
  call s:HL("mailQuoted1", s:olive, "", "")
  call s:HL("mailQuoted2", s:navy, "", "")

  " XML Highlighting
  call s:HL("xmlProcessingDelim", s:pink, "", "")
  call s:HL("xmlString", s:olive, "", "")
  call s:HL("xmlEqual", s:orange, "", "")
  call s:HL("xmlAttrib", s:navy, "", "")
  call s:HL("xmlAttribPunct", s:pink, "", "")
  call s:HL("xmlTag", s:blue, "", "")
  call s:HL("xmlTagName", s:blue, "", "")
  call s:HL("xmlEndTag", s:blue, "", "")
  call s:HL("xmlNamespace", s:orange, "", "")

  " Exlixir Highlighting
  " @target https://github.com/elixir-lang/vim-elixir
  call s:HL("elixirAlias", s:blue, "", s:bold)
  call s:HL("elixirAtom", s:navy, "", "")
  call s:HL("elixirVariable", s:navy, "", "")
  call s:HL("elixirUnusedVariable", s:foreground, "", s:bold)
  call s:HL("elixirInclude", s:purple, "", "")
  call s:HL("elixirStringDelimiter", s:olive, "", "")
  call s:HL("elixirKeyword", s:purple, "", s:bold)
  call s:HL("elixirFunctionDeclaration", s:aqua, "", s:bold)
  call s:HL("elixirBlockDefinition", s:pink, "", "")
  call s:HL("elixirDefine", s:pink, "", "")
  call s:HL("elixirStructDefine", s:pink, "", "")
  call s:HL("elixirPrivateDefine", s:pink, "", "")
  call s:HL("elixirModuleDefine", s:pink, "", "")
  call s:HL("elixirProtocolDefine", s:pink, "", "")
  call s:HL("elixirImplDefine", s:pink, "", "")
  call s:HL("elixirModuleDeclaration", s:aqua, "", s:bold)
  call s:HL("elixirDocString", s:olive, "", "")
  call s:HL("elixirDocTest", s:green, "", s:bold)

  " Erlang Highlighting
  call s:HL("erlangBIF", s:purple, "", s:bold)
  call s:HL("erlangBracket", s:pink, "", "")
  call s:HL("erlangLocalFuncCall", s:foreground, "", "")
  call s:HL("erlangVariable", s:foreground, "", "")
  call s:HL("erlangAtom", s:navy, "", "")
  call s:HL("erlangAttribute", s:blue, "", s:bold)
  call s:HL("erlangRecordDef", s:blue, "", s:bold)
  call s:HL("erlangRecord", s:blue, "", "")
  call s:HL("erlangRightArrow", s:blue, "", s:bold)
  call s:HL("erlangStringModifier", s:olive, "", s:bold)
  call s:HL("erlangInclude", s:blue, "", s:bold)
  call s:HL("erlangKeyword", s:pink, "", "")
  call s:HL("erlangGlobalFuncCall", s:foreground, "", "")

  " Cucumber Highlighting
  call s:HL("cucumberFeature", s:blue, "", s:bold)
  call s:HL("cucumberBackground", s:pink, "", s:bold)
  call s:HL("cucumberScenario", s:pink, "", s:bold)
  call s:HL("cucumberGiven", s:orange, "", "")
  call s:HL("cucumberGivenAnd", s:blue, "", "")
  call s:HL("cucumberThen", s:orange, "", "")
  call s:HL("cucumberThenAnd", s:blue, "", "")
  call s:HL("cucumberWhen", s:purple, "", s:bold)
  call s:HL("cucumberScenarioOutline", s:pink, "", s:bold)
  call s:HL("cucumberExamples", s:aqua, "", "")
  call s:HL("cucumberTags", s:aqua, "", "")
  call s:HL("cucumberPlaceholder", s:aqua, "", "")

  " Ada Highlighting
  call s:HL("adaInc", s:aqua, "", s:bold)
  call s:HL("adaSpecial", s:aqua, "", s:bold)
  call s:HL("adaKeyword", s:pink, "", "")
  call s:HL("adaBegin", s:pink, "", "")
  call s:HL("adaEnd", s:pink, "", "")
  call s:HL("adaTypedef", s:navy, "", s:bold)
  call s:HL("adaAssignment", s:aqua, "", s:bold)
  call s:HL("adaAttribute", s:green, "", "")

  " COBOL Highlighting
  call s:HL("cobolMarker", s:comment, s:cursorline, "")
  call s:HL("cobolLine", s:foreground, "", "")
  call s:HL("cobolReserved", s:blue, "", "")
  call s:HL("cobolDivision", s:pink, "", s:bold)
  call s:HL("cobolDivisionName", s:pink, "", s:bold)
  call s:HL("cobolSection", s:navy, "", s:bold)
  call s:HL("cobolSectionName", s:navy, "", s:bold)
  call s:HL("cobolParagraph", s:purple, "", "")
  call s:HL("cobolParagraphName", s:purple, "", "")
  call s:HL("cobolDeclA", s:purple, "", "")
  call s:HL("cobolDecl", s:green, "", "")
  call s:HL("cobolCALLs", s:aqua, "", s:bold)
  call s:HL("cobolEXECs", s:aqua, "", s:bold)
  " }}}

  " Plugin: Netrw
  call s:HL("netrwVersion", s:red, "", "")
  call s:HL("netrwList", s:pink, "", "")
  call s:HL("netrwHidePat", s:olive, "", "")
  call s:HL("netrwQuickHelp", s:blue, "", "")
  call s:HL("netrwHelpCmd", s:blue, "", "")
  call s:HL("netrwDir", s:aqua, "", s:bold)
  call s:HL("netrwClassify", s:pink, "", "")
  call s:HL("netrwExe", s:green, "", "")
  call s:HL("netrwSuffixes", s:comment, "", "")
  call s:HL("netrwTreeBar", s:linenumber_fg, "", "")

  " Plugin: NERDTree
  call s:HL("NERDTreeUp", s:comment, "", "")
  call s:HL("NERDTreeHelpCommand", s:pink, "", "")
  call s:HL("NERDTreeHelpTitle", s:blue, "", s:bold)
  call s:HL("NERDTreeHelpKey", s:pink, "", "")
  call s:HL("NERDTreeHelp", s:foreground, "", "")
  call s:HL("NERDTreeToggleOff", s:red, "", "")
  call s:HL("NERDTreeToggleOn", s:green, "", "")
  call s:HL("NERDTreeDir", s:blue, "", s:bold)
  call s:HL("NERDTreeDirSlash", s:pink, "", "")
  call s:HL("NERDTreeFile", s:foreground, "", "")
  call s:HL("NERDTreeExecFile", s:green, "", "")
  call s:HL("NERDTreeOpenable", s:pink, "", s:bold)
  call s:HL("NERDTreeClosable", s:pink, "", "")

  " Plugin: Tagbar
  call s:HL("TagbarHelpTitle", s:blue, "", s:bold)
  call s:HL("TagbarHelp", s:foreground, "", "")
  call s:HL("TagbarKind", s:pink, "", "")
  call s:HL("TagbarSignature", s:aqua, "", "")

  " Plugin: Vimdiff
  call s:HL("DiffAdd",    s:diffadd_fg,    s:diffadd_bg,    "none")
  call s:HL("DiffChange", s:diffchange_fg, s:diffchange_bg, "none")
  call s:HL("DiffDelete", s:diffdelete_fg, s:diffdelete_bg, "none")
  call s:HL("DiffText",   s:difftext_fg,   s:difftext_bg,   "none")

  " Plugin: AGit
  call s:HL("agitStatAdded", s:diffadd_fg, "", "")
  call s:HL("agitStatRemoved", s:diffdelete_fg, "", "")

  call s:HL("agitDiffAdd", s:diffadd_fg, "", "")
  call s:HL("agitDiffRemove", s:diffdelete_fg, "", "")

  call s:HL("agitDiffHeader", s:pink, "", "")
  call s:HL("agitDiff", s:foreground, "", "")

  call s:HL("agitDiffIndex", s:purple, "", "")
  call s:HL("agitDiffFileName", s:aqua, "", "")

  call s:HL("agitLog", s:foreground, "", "")
  call s:HL("agitAuthorMark", s:olive, "", "")

  call s:HL("agitDateMark", s:comment, "", "")

  call s:HL("agitHeaderLabel", s:aqua, "", "")

  call s:HL("agitHead", s:olive, "", "")
  call s:HL("agitHeader", s:olive, "", "")

  " Plugin: Spell Checking
  call s:HL("SpellBad",   s:foreground, s:spellbad,   "")
  call s:HL("SpellCap",   s:foreground, s:spellcap,   "")
  call s:HL("SpellRare",  s:foreground, s:spellrare,  "")
  call s:HL("SpellLocal", s:foreground, s:spelllocal, "")

  " Plugin: Indent Guides
  call s:HL("IndentGuidesOdd", "", s:background, "")
  call s:HL("IndentGuidesEven", "", s:cursorline, "")

  " Plugin: Startify
  call s:HL("StartifyFile", s:blue, "", s:bold)
  call s:HL("StartifyNumber", s:orange, "", "")
  call s:HL("StartifyHeader", s:comment, "", "")
  call s:HL("StartifySection", s:pink, "", "")
  call s:HL("StartifyPath", s:foreground, "", "")
  call s:HL("StartifySlash", s:navy, "", "")
  call s:HL("StartifyBracket", s:aqua, "", "")
  call s:HL("StartifySpecial", s:aqua, "", "")

  " Git
  call s:HL("diffAdded", s:olive, "", "")
  call s:HL("diffRemoved", s:pink, "", "")
  " call s:HL("gitcommitSummary", "", "", s:bold)

endfun
" }}}

"}}}

" =========================== TESTING =====================================
" Run unit testing :call g:PaperColor_Test()

" UNIT TESTING: {{{

fun! s:test_report(test, verbose)
  if a:test[1] != ''
    echo a:test[0]
    echo '==> failed. ' . a:test[1]
    return 1

  elseif a:verbose == 1
    echo a:test[0]
    echo '==> passed.'
    return 0

  endif
endfun

fun! s:palettes_should_have_color00_to_color15()
  let l:premise = "All color palettes should have color00 to color15, each has 2 components"
  let l:error = ''

  for [name, theme] in items(s:themes)

    for l:variant in ['light', 'dark']
      if has_key(theme, l:variant)
        let l:palette = theme[l:variant].palette

        for l:color in ['color00', 'color01', 'color02', 'color03',
                      \ 'color04', 'color05', 'color06', 'color07',
                      \ 'color08', 'color09', 'color10', 'color11',
                      \ 'color12', 'color13', 'color14', 'color15' ]
          if !has_key(l:palette, l:color)
            let l:error .= "s:themes['" . name . "']." . l:variant . ".palette doesn't have " . l:color
            break
          else
            let l:value = l:palette[l:color]
            if len(l:value) != 2
              let l:error .= "s:themes['" . name . "']." . l:variant . ".palette." . l:color . " doesn't have required value"
              break
            endif
          endif
        endfor

        if l:error != ''
          return [l:premise, l:error]
        endif
      endif
    endfor

  endfor

  return [l:premise, l:error]
endfun
" ------------------------------------------------------------------

fun! s:colors_should_have_correct_format()
  let l:premise = "All colors should have correct format like this ['#abcdef', '123'] or []"
  let l:error = ''

  for [name, theme] in items(s:themes)

    for l:variant in ['light', 'dark']
      if has_key(theme, l:variant)
        let l:palette = theme[l:variant].palette

        let l:msg_prefix = "\ns:themes['" . name . "']." . l:variant . ".palette."
        for [l:color, l:value] in items(l:palette)

          let l:value = l:palette[l:color]
          if len(l:value) != 2 && len(l:value) != 0
            let l:error .= msg_prefix . l:color . " doesn't have length 2 or 0"
            continue
          endif

          if len(l:value) == 2
            if l:value[0] == '' && l:value[1] == ''
              let l:error .= msg_prefix . l:color . " doesn't have at least 1 non-empty value"
              continue
            endif

            if stridx(l:value[0], ' ') != -1
              let l:error .= msg_prefix . l:color . " has space in the first value"
              continue
            endif

            if stridx(l:value[1], ' ') != -1
              let l:error .= msg_prefix . l:color . " has space in the second value"
              continue
            endif

            if l:value[0] != '' && l:value[0][0] != '#'
              let l:error .= msg_prefix . l:color . " doesn't have '#' at the beginning of the first value"
              continue
            endif
          endif

        endfor

        " if l:error != ''
        "   return [l:premise, l:error]
        " endif

      endif
    endfor

  endfor

  return [l:premise, l:error]
endfun
" ------------------------------------------------------------------

fun! s:expected_256_only_colors_should_be_consistent()
  let l:premise = 'Palletes that are marked for TEST_256_COLOR_CONSISTENCY should have consitent values of HEX and 256 for each color'
  let l:error = ''

  for [name, theme] in items(s:themes)

    for l:variant in ['light', 'dark']
      if has_key(theme, l:variant)

        if has_key(theme[l:variant], 'TEST_256_COLOR_CONSISTENCY') &&
              \ theme[l:variant].TEST_256_COLOR_CONSISTENCY == 1
          let l:palette = theme[l:variant].palette

          for [l:color, l:value] in items(l:palette)
            if len(l:value) == 2
              let l:value_hex = l:value[0]
              let l:value_256 = l:value[1]
              let l:expected_hex = s:to_HEX[l:value_256]
              if l:value_hex != l:expected_hex
                let l:error .= "\ns:themes['" . name . "']." . l:variant . ".palette  " .
                      \ "Expected: '" . l:color ."' : ['" . l:expected_hex . "', '". l:value_256 . "']"
              endif
            endif
          endfor " end looping through colors

        endif " had TEST_256_COLOR_CONSISTENCY

      endif " had variant
    endfor " end looping through variants

  endfor " end looping through themes

  return [l:premise, l:error]
endfun
" ------------------------------------------------------------------

" TODO: later
" fun! s:test_converter()
"   let l:premise = 'Just test converter'
"   let l:error = ''

"   echo s:to_HEX['134'] . '  ' . s:to_256(s:to_HEX['134']) . ' expected 134'
"   echo s:to_HEX['135'] . '  ' . s:to_256(s:to_HEX['135']) . ' expected 135'
"   echo s:to_HEX['136'] . '  ' . s:to_256(s:to_HEX['136']) . ' expected 136'
"   echo s:to_HEX['234'] . '  ' . s:to_256(s:to_HEX['234']) . ' expected 234'
"   echo s:to_HEX['235'] . '  ' . s:to_256(s:to_HEX['235']) . ' expected 235'
"   echo s:to_HEX['236'] . '  ' . s:to_256(s:to_HEX['236']) . ' expected 236'

"   return [l:premise, l:error]
" endfun
" ------------------------------------------------------------------

fun! g:PaperColor_Test()
  let l:verbose = 1 " 0: only error
  let l:test_functions =  [
        \ function('s:palettes_should_have_color00_to_color15'),
        \ function('s:colors_should_have_correct_format'),
        \ function('s:expected_256_only_colors_should_be_consistent'),
        \ ]

  if l:verbose == 1
    echo '----- PaperColor-Theme ------'
    echo '-------- TEST BEGIN ---------'
  endif

  let l:has_failed = 0

  let l:counter = 0
  for l:Test in l:test_functions
    let l:has_failed = l:has_failed || s:test_report(l:Test(), l:verbose)
    if l:has_failed == 1
      echo ' '
      echo '[FAILED]'
      echo "Failed at test function: " l:Test
      echo ' '
      echo '-----------------------------'
      echo '' 1.0 * l:counter  / len(l:test_functions) * 100
      echon '% passed'
      break
    endif
    let l:counter += 1
  endfor

  if l:verbose == 1
    if l:has_failed == 0
      echo '[SUCCEEDED]'
    endif
    echo '-------- TEST END -----------'
  endif

  return l:has_failed
endfun

" }}}

" INTERMEDIATE FILES GENERATOR: {{{

fun! s:writeToFile(message, file)
  echo a:file
  new
  setlocal buftype=nofile bufhidden=hide noswapfile nobuflisted
  put =a:message
  execute 'w ' a:file
  q
endfun

let s:script_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

fun! g:PaperColor_GenerateSpecs()
  call s:generate_color_palettes()
endfun

fun! s:generate_color_palettes()
  let l:content = ''
  let l:indent1 = '  '
  let l:indent2 = '    '
  for [l:name, l:theme] in items(s:themes)

    let l:content .= l:name . ":\n"
    for l:variant in ['light', 'dark']
      if has_key(l:theme, l:variant)

        let l:content .= l:indent1 . l:variant . ":\n"
        let l:palette = l:theme[l:variant].palette

        for [l:color, l:value] in items(l:palette)
          let l:value_hex = l:value[0]
          " let l:value_256 = l:value[1]
          let l:content .= l:indent2 . l:color . ": " . l:value_hex . "\n"
        endfor " end looping through colors

      endif
    endfor " end looping through variants

  endfor " end looping through themes
  " echo l:content
  call s:writeToFile(l:content, "palettes.yml")
endfun



" }}}

" ============================ MAIN =======================================

" MAIN: {{{

hi clear
syntax reset
let g:colors_name = "PaperColor"

call s:adapt_to_environment()
call s:set_color_variables()
call s:set_syntax_highlighting()

" }}}

" =========================================================================
" Cheers!
" vim: fdm=marker ff=unix
