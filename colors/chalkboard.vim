" -------------------------------------
" Name: darkdonttouchme.vim
" Description: A colorscheme for vim
" Author: Adeline Jordon
" Referenece: Aaron Moser's greent.vim


" Clear highlights
highlight clear

" Clear old syntax definitions
if exists('syntax_on')
    syntax reset
endif

" Set theme name
let g:colors_name = 'darkdonttouchme'

function! s:set() abort
    let white = { 'gui': '#ffffff', 'cterm': '231'}
    let black = {'gui': '#000000', 'cterm': '16'}
    let lightestgrey = {'gui': '#eeeeee', 'cterm': '255'}

    " pale colours
    let whiteblue = { 'gui': '#dfffff', 'cterm': '195'}
    let whitepurple = {'gui': '#dfdfff', 'cterm': '189'}
    let lightyellow = {'gui': '#ffffdf', 'cterm': '229'}
    let lightred = {'gui': '#ffdfdf', 'cterm': '224'}
    let lightyellowgreen = {'gui': '#dfff87', 'cterm': '192'}
    let lightgrey = {'gui': '#dfdfdf', 'cterm': '188'}
    let lightgolden = {'gui': '#ffdfaf', 'cterm': '223'}
    let lightsalmon = {'gui': '#ffdfdf', 'cterm': '224'}

    " darker but still muted colors
    let mutemagenta = {'gui': '#875f87', 'cterm': '96'}
    let mutepurple = {'gui': '#875fd7', 'cterm': '97'}
    let mutemud = {'gui': '#875f5f', 'cterm': '95'}
    let muteorange = {'gui': '#af5f00', 'cterm': '130'}
    let muteslate = {'gui': '#878787', 'cterm': '102'}    
    let muteteal = {'gui': '#87af87', 'cterm': '108'}
    let muterainforest = {'gui': '#5f875f', 'cterm': '65'}
    let mutegreen = {'gui': '#5faf5f', 'cterm': '71'}
    let mutered = {'gui': '#af5f5f', 'cterm': '131'}
    let muteyellow = {'gui': '#dfaf5f', 'cterm': '179'}
    let muteblue = {'gui': '#87afd7', 'cterm': '110'}
    let mutemauve = {'gui': '#af8787', 'cterm': '138'}

    " dark or accent colours
    let darkgrey = {'gui': '#303030', 'cterm': '236'}
    let darkgreen = {'gui': '#005f00', 'cterm': '22'}
    let darkteal = {'gui': '#005f5f', 'cterm': '23'}
    let darkmauve = {'gui': '#5f5f5f', 'cterm': '59'}
    let alertred = {'gui': '#d70000', 'cterm': '160'} 

    let none           = {'gui': 'NONE',      'cterm': 'NONE'}
    let bold           = {'gui': 'bold',      'cterm': 'bold'}
    let italic         = {'gui': 'italic',    'cterm': 'italic'}
    let underline      = {'gui': 'underline', 'cterm': 'underline'}
    let undercurl      = {'gui': 'undercurl', 'cterm': 'underline'}
    let boldcurl       = {'gui': 'bold,undercurl', 'cterm': 'bold,underline'}
    let boldunderline  = {'gui': 'bold,underline', 'cterm': 'bold,underline'}
    let bolditalic = {'gui': 'bold,italic', 'cterm':'bold,italic'}

    let highlight_group = {}

    let highlight_group.Normal = [lightgrey, darkgrey, none, none]
    let highlight_group.Visual = [none, lightgrey, none, none]
    " Cursor
    let highlight_group.Cursor = [muteslate, black, none, none]
    if &cursorline
        let highlight_group.CursorLine = [none, darkmauve, none, none]
        let highlight_group.CursorLineNr = [whiteblue, none, none, none]
    else
        let highlight_group.CursorLineNr = [whiteblue, none, none, none]
    endif

    " Sidebar
    let highlight_group.LineNr = [lightgrey, none, bold, none]

    " Folds
    let highlight_group.Folded = [darkgrey, none, none, none]

    let highlight_group.MatchParen = [muteblue, whitepurple, none, none]

    " Syntax groups
    let highlight_group.Comment = [mutegreen, none, underline, none]
    let highlight_group.Identifier = [muteorange, none, none, none]
    let highlight_group.Statement = [mutered, none, bold, none]
    let highlight_group.Function = [muteteal, none, bold, none]
    let highlight_group.Constant = [mutemagenta, none, none, none]
    let highlight_group.String = [muteyellow, none, italic, none]
    let highlight_group.Number = [mutepurple, none, none, none]
    let highlight_group.Type = [muteblue, none, none, none]
    let highlight_group.Special = [muterainforest, none, none, none]
    let highlight_group.PreProc = [mutemud, none, bold, none]
    let highlight_group.Todo = [black, alertred, underline, none]
    let highlight_group.Error = [black, alertred, bold, none]
    let highlight_group.Underlined = [alertred, none, underline, none]
 

    let highlight_group.ModeMsg = [muteblue, none, bold, none]
    let highlight_group.SpecialKey = [whiteblue, none, none, none]

    for [group, colors] in items(highlight_group)
        execute printf('highlight %s guifg=%s guibg=%s gui=%s, guisp=%s ctermfg=%s ctermbg=%s cterm=%s',
                        \ group,
                        \ colors[0]['gui'],
                        \ colors[1]['gui'],
                        \ colors[2]['gui'],
                        \ colors[3]['gui'],
                        \ colors[0]['cterm'],
                        \ colors[1]['cterm'],
                        \ colors[2]['cterm']
                        \ )
    endfor
endfunction
call s:set()
