" Vim color file
" Maintainer:   Jani Nurminen <slinky@iki.fi>
" URL:          http://kippura.org/zenburnpage/
" License:      GNU GPL <http://www.gnu.org/licenses/gpl.html>
"
" Nothing too fancy, just some alien fruit salad to keep you in the zone.
" This syntax file was designed to be used with dark environments and
" low light situations. Of course, if it works during a daybright office, go
" ahead :)
"
" Owes heavily to other Vim color files! With special mentions
" to "BlackDust", "Camo" and "Desert".
"
" To install, copy to ~/.vim/colors directory.
"
" Alternatively, you can use Vimball installation:
"     vim zenburn.vba
"     :so %
"     :q
"
" For details, see :help vimball
"
" After installation, use it with :colorscheme zenburn.
" See also :help syntax
"
" Credits:
"  - Jani Nurminen - original Zenburn, maintainer
"  - Steve Hall & Cream posse - higher-contrast Visual selection
"  - Kurt Maier - 256 color console coloring, low and high contrast toggle,
"                 bug fixing
"  - Charlie - spotted too bright StatusLine in non-high contrast mode
"  - Pablo Castellazzi - CursorLine fix for 256 color mode
"  - Tim Smith - force dark background
"  - John Gabriele - spotted bad Ignore-group handling
"  - Zac Thompson - spotted invisible NonText in low contrast mode
"  - Christophe-Marie Duquesne - suggested making a Vimball,
"    suggested support for ctags_highlighting.vim
"  - Andrew Wagner - noted the CursorColumn bug (guifg was unintentionally set),
"                    unify CursorColumn colour
"  - Martin Langasek - clarify the license, whitespace fixes
"  - Marcin Szamotulski - support autocomplete for Zenburn configuration
"                         parameters
"  - Clayton Parker (claytron) - Convinced by Kurt Maier to use Zenburn. Point
"    out issues with LineNr, fix directory styles, and their usage in MacVim.
"  - Paweł Piekarski - Spotted bad FoldColumn and TabLine. Made better 
"                      FoldColumn colors, fixed TabLine colors.
"  - Jim - Fix for missing Include group for terminal
"  - Peter (Sakartu) - ColorColumn fixes
"  - Please see git log for the others not listed here
"
" CONFIGURABLE PARAMETERS:
"
" You can use the default (don't set any parameters), or you can
" set some parameters to tweak the Zenburn colours.
"
" To use them, put them into your .vimrc file before loading the color scheme,
" example:
"    let g:zenburn_high_Contrast=1
"    colors zenburn
"
" You can also do ":let g:zenburn" then hit Ctrl-d or Tab to scroll through the
" list of configurable parameters.
"
" * You can now set a darker background for bright environments. To activate, use:
"      let g:zenburn_high_Contrast = 1
"
" * For transparent terminals set the background to black with:
"      let g:zenburn_transparent = 1
"
" * For example, Vim help files uses the Ignore-group for the pipes in tags
"   like "|somelink.txt|". By default, the pipes are not visible, as they
"   map to Ignore group. If you wish to enable coloring of the Ignore group,
"   set the following parameter to 1. Warning, it might make some syntax files
"   look strange.
"
"      let g:zenburn_color_also_Ignore = 1
"
" * To get more contrast to the Visual selection, use
"
"      let g:zenburn_alternate_Visual = 1
"
"   Note: this is enabled only if the old-style Visual
"   if used, see g:zenburn_old_Visual
"
" * To use alternate colouring for Error message, use
"
"      let g:zenburn_alternate_Error = 1
"
" * The new default for Include is a duller orange. To use the original
"   colouring for Include, use
"
"      let g:zenburn_alternate_Include = 1
"
" * To disable underlining for Labels, use
"
"      let g:zenburn_disable_Label_underline = 1
"
" * Work-around to a Vim bug, it seems to misinterpret ctermfg and 234 and 237
"   as light values, and sets background to light for some people. If you have
"   this problem, use:
"
"      let g:zenburn_force_dark_Background = 1
"
" * By default the CursorColumn is of a lighter colour. I find it more readable
"   that way, but some people may want to align it with the darker CursorLine
"   color, for visual uniformity. To do so, use:
"
"      let g:zenburn_unified_CursorColumn = 1
"
"   Note: you can ignore this unless you use
"   ":set cursorline cursorcolumn", since otherwise the effect won't be
"   seen.
"
" * New (dark) Visual coloring has been introduced.
"   The dark Visual is more aligned with the rest of the colour scheme,
"   especially if you use line numbers. If you wish to use the 
"   old Visual coloring, use
"
"      let g:zenburn_old_Visual = 1
"
"   Default is to use the new Visual.
"
"  * EXPERIMENTAL FEATURE: Zenburn would like to support TagHighlight
"    (an evolved ctags-highlighter) by Al Budden (homepage:
"    http://www.cgtk.co.uk/vim-scripts/taghighlight).
"    Current support status is broken: there is no automatic detection of
"    TagHighlight, no specific language support; however there is some basic
"    support for Python. If you are a user of TagHighlight and want to help,
"    please enable:
"
"      let g:zenburn_enable_TagHighlight=1
"
"    and improve the corresponding block at the end of the file.
"
" NOTE:
"
" * To turn the parameter(s) back to defaults, use UNLET or set them to 0:
"
"      unlet g:zenburn_alternate_Include
"   or 
"      let g:zenburn_alternate_Include = 0
"
"
" That's it, enjoy!
"
" TODO
"   - Visual alternate color is broken? Try GVim >= 7.0.66 if you have trouble
"   - IME colouring (CursorIM)

" Finish if we are in a term lacking 256 color support
if ! has("gui_running") && &t_Co <= 255
    finish
endif

" Set defaults, but keep any parameters already set by the user
if ! exists("g:zenburn_high_Contrast")
    let g:zenburn_high_Contrast = 0
endif

if ! exists("g:zenburn_transparent")
    let g:zenburn_transparent = 0
endif

if ! exists("g:zenburn_color_also_Ignore")
    let g:zenburn_color_also_Ignore = 0
endif

if ! exists("g:zenburn_alternate_Error")
    let g:zenburn_alternate_Error = 0
endif

if ! exists("g:zenburn_force_dark_Background")
    let g:zenburn_force_dark_Background = 0
endif

if ! exists("g:zenburn_alternate_Visual")
    let g:zenburn_alternate_Visual = 0
endif

if ! exists("g:zenburn_alternate_Include")
    let g:zenburn_alternate_Include = 0
endif

if ! exists("g:zenburn_disable_Label_underline")
    let g:zenburn_disable_Label_underline = 0
endif

if ! exists("g:zenburn_unified_CursorColumn")
    let g:zenburn_unified_CursorColumn = 0
endif

if ! exists("g:zenburn_old_Visual")
    let g:zenburn_old_Visual = 0
endif

if ! exists("g:zenburn_enable_TagHighlight")
    let g:zenburn_enable_TagHighlight = 0
endif

" -----------------------------------------------

set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="zenburn"

hi Boolean         guifg=#dca3a3                              ctermfg=181
hi Character       guifg=#dca3a3 gui=bold                     ctermfg=181 cterm=bold
hi Comment         guifg=#7f9f7f gui=italic                   ctermfg=108
hi Conditional     guifg=#f0dfaf gui=bold                     ctermfg=223 cterm=bold
hi Constant        guifg=#dca3a3 gui=bold                     ctermfg=181 cterm=bold
hi Cursor          guifg=#000d18 guibg=#8faf9f gui=bold       ctermfg=233 ctermbg=109 cterm=bold
hi Debug           guifg=#bca3a3 gui=bold                     ctermfg=181 cterm=bold
hi Define          guifg=#ffcfaf gui=bold                     ctermfg=223 cterm=bold
hi Delimiter       guifg=#8f8f8f                              ctermfg=245
hi DiffAdd         guifg=#709080 guibg=#313c36 gui=bold       ctermfg=66  ctermbg=237 cterm=bold
hi DiffChange      guibg=#333333                              ctermbg=236
hi DiffDelete      guifg=#333333 guibg=#464646                ctermfg=236 ctermbg=238
hi DiffText        guifg=#ecbcbc guibg=#41363c gui=bold       ctermfg=217 ctermbg=237 cterm=bold
hi Directory       guifg=#9fafaf gui=bold                     ctermfg=109 cterm=bold
hi ErrorMsg        guifg=#80d4aa guibg=#2f2f2f gui=bold       ctermfg=115 ctermbg=236 cterm=bold
hi Exception       guifg=#c3bf9f gui=bold                     ctermfg=249 cterm=bold
hi Float           guifg=#c0bed1                              ctermfg=251
hi FoldColumn      guifg=#93b3a3 guibg=#3f4040
hi Folded          guifg=#93b3a3 guibg=#3f4040
hi Function        guifg=#efef8f                              ctermfg=228
hi Identifier      guifg=#efdcbc                              ctermfg=223 cterm=none
hi IncSearch       guifg=#f8f893 guibg=#385f38                ctermfg=228 ctermbg=23
hi Keyword         guifg=#f0dfaf gui=bold                     ctermfg=223 cterm=bold
hi Macro           guifg=#ffcfaf gui=bold                     ctermfg=223 cterm=bold
hi ModeMsg         guifg=#ffcfaf gui=none                     ctermfg=223 cterm=none
hi MoreMsg         guifg=#ffffff gui=bold                     ctermfg=231 cterm=bold
hi Number          guifg=#8cd0d3                              ctermfg=116
hi Operator        guifg=#f0efd0                              ctermfg=230
hi PmenuSbar       guibg=#2e3330 guifg=#000000                ctermfg=16  ctermbg=236
hi PmenuThumb      guibg=#a0afa0 guifg=#040404                ctermfg=232 ctermbg=151
hi PreCondit       guifg=#dfaf8f gui=bold                     ctermfg=180 cterm=bold
hi PreProc         guifg=#ffcfaf gui=bold                     ctermfg=223 cterm=bold
hi Question        guifg=#ffffff gui=bold                     ctermfg=231 cterm=bold
hi Repeat          guifg=#ffd7a7 gui=bold                     ctermfg=223 cterm=bold
hi Search          guifg=#ffffe0 guibg=#284f28                ctermfg=230 ctermbg=22
hi SignColumn      guifg=#9fafaf gui=bold                     ctermfg=109 cterm=bold
hi SpecialChar     guifg=#dca3a3 gui=bold                     ctermfg=181 cterm=bold
hi SpecialComment  guifg=#82a282 gui=bold                     ctermfg=108 cterm=bold
hi Special         guifg=#cfbfaf                              ctermfg=181
hi SpecialKey      guifg=#9ece9e                              ctermfg=151
hi Statement       guifg=#e3ceab gui=none                     ctermfg=187 cterm=none
hi StatusLine      guifg=#313633 guibg=#ccdc90                ctermfg=236 ctermbg=186
hi StatusLineNC    guifg=#2e3330 guibg=#88b090                ctermfg=235 ctermbg=108
hi StorageClass    guifg=#c3bf9f gui=bold                     ctermfg=249 cterm=bold
hi String          guifg=#cc9393                              ctermfg=174
hi Structure       guifg=#efefaf gui=bold                     ctermfg=229 cterm=bold
hi Tag             guifg=#e89393 gui=bold                     ctermfg=181 cterm=bold
hi Title           guifg=#efefef gui=bold                     ctermfg=255 ctermbg=NONE cterm=bold
hi Todo            guifg=#dfdfdf guibg=NONE    gui=bold       ctermfg=254 ctermbg=NONE cterm=bold
hi Typedef         guifg=#dfe4cf gui=bold                     ctermfg=253 cterm=bold
hi Type            guifg=#dfdfbf gui=bold                     ctermfg=187 cterm=bold
hi Underlined      guifg=#dcdccc gui=underline                ctermfg=188 cterm=underline
hi VertSplit       guifg=#2e3330 guibg=#688060                ctermfg=236 ctermbg=65
hi VisualNOS       guifg=#333333 guibg=#f18c96 gui=bold,underline ctermfg=236 ctermbg=210 cterm=bold
hi WarningMsg      guifg=#ffffff guibg=#333333 gui=bold       ctermfg=231 ctermbg=236 cterm=bold
hi WildMenu        guifg=#cbecd0 guibg=#2c302d gui=underline  ctermfg=194 ctermbg=236 cterm=underline

" spellchecking, always "bright" term background
hi SpellBad   guisp=#bc6c4c guifg=#dc8c6c  ctermfg=209 ctermbg=237
hi SpellCap   guisp=#6c6c9c guifg=#8c8cbc  ctermfg=103 ctermbg=237
hi SpellRare  guisp=#bc6c9c guifg=#bc8cbc  ctermfg=139 ctermbg=237
hi SpellLocal guisp=#7cac7c guifg=#9ccc9c  ctermfg=151 ctermbg=237

if exists("g:zenburn_high_Contrast") && g:zenburn_high_Contrast
    " use new darker background
    hi Normal        guifg=#dcdccc guibg=#1f1f1f           ctermfg=188 ctermbg=234
    hi ColorColumn   guibg=#33332f                         ctermbg=235
    hi CursorLine    guibg=#121212 gui=bold                ctermbg=233 cterm=none
    hi CursorLineNr  guifg=#f2f3bb guibg=#161616           ctermfg=229 ctermbg=233
    if exists("g:zenburn_unified_CursorColumn") && g:zenburn_unified_CursorColumn
        hi CursorColumn  guibg=#121212 gui=bold            ctermbg=233 cterm=none
    else
        hi CursorColumn  guibg=#2b2b2b                     ctermbg=235 cterm=none
    endif
    hi FoldColumn    guibg=#161616                         ctermbg=233 ctermfg=109
    hi Folded        guibg=#161616                         ctermbg=233 ctermfg=109
    hi LineNr        guifg=#9fafaf guibg=#161616           ctermfg=248 ctermbg=233
    hi NonText       guifg=#404040 gui=bold                ctermfg=238
    hi Pmenu         guibg=#242424 guifg=#ccccbc           ctermfg=251 ctermbg=235
    hi PmenuSel      guibg=#353a37 guifg=#ccdc90 gui=bold  ctermfg=187 ctermbg=236 cterm=bold
    hi MatchParen    guifg=#f0f0c0 guibg=#383838 gui=bold  ctermfg=229 ctermbg=237 cterm=bold
    hi SignColumn    guibg=#181818                         ctermbg=233
    hi SpecialKey    guibg=#242424
    hi TabLine       guifg=#88b090 guibg=#313633 gui=none  ctermbg=236 ctermfg=108 cterm=none
    hi TabLineSel    guifg=#ccd990 guibg=#222222           ctermbg=235 ctermfg=186 cterm=bold
    hi TabLineFill   guifg=#88b090 guibg=#313633 gui=none  ctermbg=236 ctermfg=108 cterm=none
else
    " Original, lighter background
    hi Normal        guifg=#dcdccc guibg=#3f3f3f           ctermfg=188 ctermbg=237
    hi ColorColumn   guibg=#484848                         ctermbg=238
    hi CursorLine    guibg=#434443                         ctermbg=238 cterm=none
    hi CursorLineNr  guifg=#d2d39b guibg=#262626           ctermfg=230 ctermbg=235
    if exists("g:zenburn_unified_CursorColumn") && g:zenburn_unified_CursorColumn
        hi CursorColumn  guibg=#434343                     ctermbg=238 cterm=none
    else
        hi CursorColumn  guibg=#4f4f4f                     ctermbg=239 cterm=none
    endif
    hi FoldColumn    guibg=#333333                         ctermbg=236 ctermfg=109
    hi Folded        guibg=#333333                         ctermbg=236 ctermfg=109
    hi LineNr        guifg=#9fafaf guibg=#262626           ctermfg=248 ctermbg=235
    hi NonText       guifg=#5b605e gui=bold                ctermfg=240
    hi Pmenu         guibg=#2c2e2e guifg=#9f9f9f           ctermfg=248 ctermbg=235
    hi PmenuSel      guibg=#242424 guifg=#d0d0a0 gui=bold  ctermfg=187 ctermbg=235 cterm=bold
    hi MatchParen    guifg=#b2b2a0 guibg=#2e2e2e gui=bold  ctermfg=145 ctermbg=236 cterm=bold
    hi SignColumn    guibg=#343434                         ctermbg=236
    hi SpecialKey    guibg=#444444
    hi TabLine       guifg=#d0d0b8 guibg=#222222 gui=none  ctermbg=235 ctermfg=187 cterm=none
    hi TabLineSel    guifg=#f0f0b0 guibg=#333333 gui=bold  ctermbg=236 ctermfg=229 cterm=bold
    hi TabLineFill   guifg=#dccdcc guibg=#101010 gui=none  ctermbg=233 ctermfg=188 cterm=none

    hi StatusLine    ctermbg=144
endif

if exists("g:zenburn_force_dark_Background") && g:zenburn_force_dark_Background
    " Force dark background, because of a bug in VIM:  VIM sets background
    " automatically during "hi Normal ctermfg=X"; it misinterprets the high
    " value (234 or 237 above) as a light color, and wrongly sets background to
    " light.  See ":help highlight" for details.
    set background=dark
endif

if exists("g:zenburn_transparent") && g:zenburn_transparent
    hi Normal             ctermbg=0     guibg=#000000
    hi Statement          ctermbg=NONE
    hi Title              ctermbg=NONE
    hi Todo               ctermbg=NONE
    hi Underlined         ctermbg=NONE
    hi DiffAdd            ctermbg=NONE
    hi DiffText           ctermbg=NONE
    hi ErrorMsg           ctermbg=NONE
    hi LineNr             ctermbg=NONE
endif

if exists("g:zenburn_old_Visual") && g:zenburn_old_Visual
    if exists("g:zenburn_alternate_Visual") && g:zenburn_alternate_Visual
        " Visual with more contrast, thanks to Steve Hall & Cream posse
        " gui=none fixes weird highlight problem in at least GVim 7.0.66, thanks to Kurt Maier
        hi Visual          guifg=#000000 guibg=#71d3b4 gui=none  ctermfg=16  ctermbg=79  cterm=none
        hi VisualNOS       guifg=#000000 guibg=#71d3b4 gui=none  ctermfg=16  ctermbg=79  cterm=none
    else
        " use default visual
        hi Visual          guifg=#233323 guibg=#71d3b4 gui=none  ctermfg=235 ctermbg=79  cterm=none
        hi VisualNOS       guifg=#233323 guibg=#71d3b4 gui=none  ctermfg=235 ctermbg=79  cterm=none
    endif
else
    " new Visual style
    if exists("g:zenburn_high_Contrast") && g:zenburn_high_Contrast
        " high contrast
        "hi Visual        guibg=#304a3d
        "hi VisualNos     guibg=#304a3d
        "TODO no nice greenish in console, 65 is closest. use full black instead,
        "although i like the green..!
        hi Visual        guibg=#0f0f0f  ctermbg=232
        hi VisualNOS     guibg=#0f0f0f  ctermbg=232
        if exists("g:zenburn_transparent") && g:zenburn_transparent
            hi Visual ctermbg=235
        endif
    else
        " low contrast
        hi Visual        guibg=#2f2f2f  ctermbg=235
        hi VisualNOS     guibg=#2f2f2f  ctermbg=235
    endif
endif

if exists("g:zenburn_alternate_Error") && g:zenburn_alternate_Error
    " use more jumpy Error
    hi Error    guifg=#e37170 guibg=#664040 gui=bold  ctermfg=210 ctermbg=52 cterm=bold
else
    " default is something more zenburn-compatible
    hi Error    guifg=#e37170 guibg=#3d3535 gui=bold  ctermfg=167 ctermbg=236 cterm=bold
endif

if exists("g:zenburn_alternate_Include") && g:zenburn_alternate_Include
    " original setting
    hi Include  guifg=#ffcfaf gui=bold                ctermfg=223 cterm=bold
else
    " new, less contrasted one
    hi Include  guifg=#dfaf8f gui=bold                ctermfg=180 cterm=bold
endif

if exists("g:zenburn_disable_Label_underline") && g:zenburn_disable_Label_underline
    hi Label    guifg=#dfcfaf                         ctermfg=187
else
    hi Label    guifg=#dfcfaf gui=underline           ctermfg=187 cterm=underline
endif

if exists("g:zenburn_color_also_Ignore") && g:zenburn_color_also_Ignore
    " color the Ignore groups
    " note: if you get strange coloring for your files, turn this off (unlet)
    if exists("g:zenburn_high_Contrast") && g:zenburn_high_Contrast
        hi Ignore                ctermfg=238
    else
        hi Ignore guifg=#545a4f  ctermfg=240
    endif
endif

" EXPERIMENTAL TagHighlight support
" link/set sensible defaults here;
"
" For now I mostly link to subset of Zenburn colors, the linkage is based
" on appearance, not semantics. In later versions I might define more new colours.
"
" HELP NEEDED to make this work properly.

if exists("g:zenburn_enable_TagHighlight") && g:zenburn_enable_TagHighlight
        " CTag support may vary, but the first step is to start using it so
        " we can fix it!
        "
        " Consult /plugin/TagHighlight/data/kinds.txt for info on your
        " language and what's been defined.
        "
        " There is potential for language indepedent features here. (Acutally,
        " seems it may be required for this to be useful...) This way we can
        " implement features depending on how well CTags are currently implemented
        " for the language. ie. Global problem for python is annoying.  Special
        " colors are defined for special language features, etc..
        "
        " For now all I care about is python supported features:
        "   c:CTagsClass
        "   f:CTagsFunction
        "   i:CTagsImport
        "   m:CTagsMember
        "   v:CTagsGlobalVariable
        "
        "   Note: TagHighlight defaults to setting new tags to Keyword
        "   highlighting.

        " TODO conditionally run each section
        " BEGIN Python Section
        hi link Class        Function
        hi link Import       PythonInclude
        hi link Member       Function
        "Note: Function is already defined

        " Highlighter seems to think a lot of things are global variables even
        " though they're not. Example: python method-local variable is
        " coloured as a global variable. They should not be global, since
        " they're not visible outside the method.
        " If this is some very bright colour group then things look bad.
        " hi link GlobalVariable    Identifier

        " Because of this problem I am disabling the feature by setting it to
        " Normal instead
        hi link GlobalVariable Normal
        " END Python Section

        " Starting point for other languages.
        hi link GlobalConstant    Constant
        hi link EnumerationValue  Float
        hi link EnumerationName   Identifier
        hi link DefinedName       WarningMsg
        hi link LocalVariable     WarningMsg
        hi link Structure         WarningMsg
        hi link Union             WarningMsg
endif

" TODO check for more obscure syntax groups that they're ok

