if exists('g:lightline')
  
  let s:bg = '#282c34'
  let s:fg = '#abb2bf'
  let s:gray1 = '#3e4452'
  let s:gray2 = '#2c323c'
  let s:gray3 = '#55606d'
  let s:green = '#43d08a'
  let s:red = '#e05252'
  let s:red2 = '#e06c75'
  let s:orange = '#c8ae9d'

  let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}}
  let s:p.normal.left = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:gray1 ] ]
  let s:p.normal.right = [ [s:bg, s:green ], [ s:fg, s:gray1 ] ]
  let s:p.normal.middle = [ [ s:fg, s:gray2 ] ]
  let s:p.inactive.right = [ [ s:gray3, s:gray2 ], [ s:gray3, s:gray2 ] ]
  let s:p.inactive.left =  [ [ s:gray3, s:gray2 ], [ s:gray3, s:gray2 ] ]
  let s:p.inactive.middle = [ [ s:gray3, s:gray2 ] ]
  let s:p.insert.left = [ [ s:bg, s:fg, 'bold' ], [ s:fg, s:gray3 ] ]
  let s:p.insert.right = [ [ s:bg, s:fg ], [ s:fg, s:gray1 ] ]
  let s:p.insert.middle = [ [ s:fg, s:gray2 ] ]
  let s:p.replace.left = [ [ s:bg, s:red, 'bold' ], [ s:fg, s:gray1 ] ]
  let s:p.replace.right = [ [ s:bg, s:red ], [ s:fg, s:gray1 ] ]
  let s:p.replace.middle = [ [ s:fg, s:gray2 ] ]
  let s:p.visual.left = [ [ s:bg, s:orange, 'bold' ], [ s:red2, s:gray1 ] ]
  let s:p.visual.right = [ [ s:bg, s:orange ], [ s:red2, s:gray1 ] ]
  let s:p.visual.middle = [ [ s:fg, s:gray2 ] ]
  let s:p.tabline.left = [ [ s:fg, s:gray1 ] ]
  let s:p.tabline.tabsel = [ [ s:bg, s:green ] ]
  let s:p.tabline.middle = [ [ s:bg, s:bg ] ]
  let s:p.tabline.right = [ [ s:bg, s:red ] ]
  let s:p.normal.error = [ [ s:bg, s:red ] ]
  let s:p.normal.warning = [ [ s:bg, s:orange ] ]

  let g:lightline#colorscheme#twofirewatch#palette = lightline#colorscheme#fill(s:p)
endif
