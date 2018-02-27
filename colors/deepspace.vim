" Deep Space - An intergalactically friendly color scheme for lightline
" Author: Paul Meffle
" License: MIT

if(exists("g:lightline"))
    " Color palette
    let s:gray1 = '#1b202a'
    let s:gray2 = '#232936'
    let s:gray3 = '#323c4d'
    let s:gray4 = '#51617d'
    let s:gray5 = '#9aa7bd'
    let s:red = '#b15e7c'
    let s:green = '#709d6c'
    let s:yellow = '#b5a262'
    let s:blue = '#608cc3'
    let s:purple = '#8f72bf'
    let s:cyan = '#56adb7'
    let s:orange = '#b3785d'
    let s:pink = '#c47ebd'

    let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

    let s:p.normal.left = [ [ s:gray2, s:blue ], [ s:gray5, s:gray3 ] ]
    let s:p.normal.right = [ [ s:gray2, s:blue ], [ s:gray5, s:gray3 ] ]
    let s:p.normal.middle = [ [ s:gray4, s:gray2 ] ]
    let s:p.normal.error = [ [ s:gray2, s:red ] ]
    let s:p.normal.warning = [ [ s:gray2, s:yellow ] ]

    let s:p.insert.left = [ [ s:gray2, s:green ], [ s:gray5, s:gray3 ] ]
    let s:p.insert.right = [ [ s:gray2, s:green ], [ s:gray5, s:gray3 ] ]

    let s:p.replace.left = [ [ s:gray2, s:red ], [ s:gray5, s:gray3 ] ]
    let s:p.replace.right = [ [ s:gray2, s:red ], [ s:gray5, s:gray3 ] ]

    let s:p.visual.left = [ [ s:gray2, s:orange ], [ s:gray5, s:gray3 ] ]
    let s:p.visual.right = [ [ s:gray2, s:orange ], [ s:gray5, s:gray3 ] ]

    let s:p.inactive.left =  [ [ s:gray5, s:gray3 ], [ s:gray4, s:gray2 ] ]
    let s:p.inactive.right = [ [ s:gray5, s:gray3 ], [ s:gray4, s:gray2 ] ]
    let s:p.inactive.middle = [ [ s:gray4, s:gray2 ] ]

    let s:p.tabline.left = [ [ s:gray5, s:gray3 ] ]
    let s:p.tabline.middle = [ [ s:gray4, s:gray2 ] ]
    let s:p.tabline.right = [ [ s:gray2, s:blue ] ]
    let s:p.tabline.tabsel = [ [ s:gray2, s:blue ] ]

    let g:lightline#colorscheme#deepspace#palette = lightline#colorscheme#fill(s:p)
endif
