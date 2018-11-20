"" bluedrake.vim
""
"" Designer: Michael Malick
"" Version:  0.10
""
"" For details of highlight groups see :h syntax
"" To inspect filetype syntax files use :e $VIMRUNTIME/syntax/html.vim


hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bluedrake"
if !exists("g:bluedrake_256")
    let g:bluedrake_256 = 0
endif



" GUI colors -----------------------------------------------
let s:GSbase03  = "002d49"
let s:GSbase02  = "003951"
let s:GSbase01  = "2f5468"
let s:GSbase00  = "577284"
let s:GSbase0   = "8ea2b0"
let s:GSbase1   = "b4c3cf"
let s:GSbase2   = "dae6f0"
let s:GSbase3   = "edf8ff"

let s:Gyellow  = "768f00"
let s:Gorange  = "b67800"
let s:Gred     = "d75a69"
let s:Gmagenta = "d74bb9"
let s:Gviolet  = "976ce2"
let s:Gblue    = "0094d4"
let s:Gcyan    = "00a39a"
let s:Ggreen   = "009e3c"

if &background=="dark"
    let s:Gbase03 = s:GSbase03
    let s:Gbase02 = s:GSbase02
    let s:Gbase01 = s:GSbase01
    let s:Gbase00 = s:GSbase00
    let s:Gbase0  = s:GSbase0
    let s:Gbase1  = s:GSbase1
    let s:Gbase2  = s:GSbase2
    let s:Gbase3  = s:GSbase3
endif

if &background=="light"
    let s:Gbase03 = s:GSbase3
    let s:Gbase02 = s:GSbase2
    let s:Gbase01 = s:GSbase1
    let s:Gbase00 = s:GSbase0
    let s:Gbase0  = s:GSbase00
    let s:Gbase1  = s:GSbase01
    let s:Gbase2  = s:GSbase02
    let s:Gbase3  = s:GSbase03
endif


" Terminal colors ------------------------------------------
if g:bluedrake_256 == 0
    let s:TSbase03   = "8"
    let s:TSbase02   = "0"
    let s:TSbase01   = "10"
    let s:TSbase00   = "11"
    let s:TSbase0    = "12"
    let s:TSbase1    = "14"
    let s:TSbase2    = "7"
    let s:TSbase3    = "15"

    let s:Tyellow   = "3"
    let s:Torange   = "9"
    let s:Tred      = "1"
    let s:Tmagenta  = "13"
    let s:Tviolet   = "5"
    let s:Tblue     = "4"
    let s:Tcyan     = "6"
    let s:Tgreen    = "2"
endif

if g:bluedrake_256 == 1
    let s:TSbase03   = "235"
    let s:TSbase02   = "236"
    let s:TSbase01   = "24"
    let s:TSbase00   = "242"
    let s:TSbase0    = "247"
    let s:TSbase1    = "110"
    let s:TSbase2    = "253"
    let s:TSbase3    = "254"

    let s:Tyellow   = "100"
    let s:Torange   = "136"
    let s:Tred      = "167"
    let s:Tmagenta  = "170"
    let s:Tviolet   = "99"
    let s:Tblue     = "32"
    let s:Tcyan     = "37"
    let s:Tgreen    = "28"
endif

if &background=="dark"
    let s:Tbase03 = s:TSbase03
    let s:Tbase02 = s:TSbase02
    let s:Tbase01 = s:TSbase01
    let s:Tbase00 = s:TSbase00
    let s:Tbase0  = s:TSbase0
    let s:Tbase1  = s:TSbase1
    let s:Tbase2  = s:TSbase2
    let s:Tbase3  = s:TSbase3
endif

if &background=="light"
    let s:Tbase03 = s:TSbase3
    let s:Tbase02 = s:TSbase2
    let s:Tbase01 = s:TSbase1
    let s:Tbase00 = s:TSbase0
    let s:Tbase0  = s:TSbase00
    let s:Tbase1  = s:TSbase01
    let s:Tbase2  = s:TSbase02
    let s:Tbase3  = s:TSbase03
endif

if has('nvim')
    let g:terminal_color_0  = '#'.s:Gbase02
    let g:terminal_color_1  = '#'.s:Gred
    let g:terminal_color_2  = '#'.s:Ggreen
    let g:terminal_color_3  = '#'.s:Gyellow
    let g:terminal_color_4  = '#'.s:Gblue
    let g:terminal_color_5  = '#'.s:Gviolet
    let g:terminal_color_6  = '#'.s:Gcyan
    let g:terminal_color_7  = '#'.s:Gbase2
    let g:terminal_color_8  = '#'.s:Gbase03
    let g:terminal_color_9  = '#'.s:Gorange
    let g:terminal_color_10 = '#'.s:Gbase01
    let g:terminal_color_11 = '#'.s:Gbase00
    let g:terminal_color_12 = '#'.s:Gbase0
    let g:terminal_color_13 = '#'.s:Gmagenta
    let g:terminal_color_14 = '#'.s:Gbase1
    let g:terminal_color_15 = '#'.s:Gbase3
endif


"" Functions -----------------------------------------------
function! s:bluedrake_color(color)
    "" return a list of length two giving [term_color, gui_color]
    if a:color == "yellow"
        let s:col = [s:Tyellow, s:Gyellow]
    elseif a:color == "orange"
        let s:col = [s:Torange, s:Gorange]
    elseif a:color == "red"
        let s:col = [s:Tred, s:Gred]
    elseif a:color == "magenta"
        let s:col = [s:Tmagenta, s:Gmagenta]
    elseif a:color == "violet"
        let s:col = [s:Tviolet, s:Gviolet]
    elseif a:color == "blue"
        let s:col = [s:Tblue, s:Gblue]
    elseif a:color == "cyan"
        let s:col = [s:Tcyan, s:Gcyan]
    elseif a:color == "green"
        let s:col = [s:Tgreen, s:Ggreen]
    elseif a:color == "base03"
        let s:col = [s:Tbase03, s:Gbase03]
    elseif a:color == "base02"
        let s:col = [s:Tbase02, s:Gbase02]
    elseif a:color == "base01"
        let s:col = [s:Tbase01, s:Gbase01]
    elseif a:color == "base00"
        let s:col = [s:Tbase00, s:Gbase00]
    elseif a:color == "base0"
        let s:col = [s:Tbase0, s:Gbase0]
    elseif a:color == "base1"
        let s:col = [s:Tbase1, s:Gbase1]
    elseif a:color == "base2"
        let s:col = [s:Tbase2, s:Gbase2]
    elseif a:color == "base3"
        let s:col = [s:Tbase3, s:Gbase3]
    endif
    return s:col
endfunction

function! <SID>Hi_all(group, fg, bg, attr)
    call <SID>Hi_gui(a:group, a:fg, a:bg, a:attr)
    call <SID>Hi_cterm(a:group, a:fg, a:bg, a:attr)
endfunction

function! <SID>Hi_cterm(group, fg, bg, attr)
    if a:fg != ""
        exec "hi " . a:group . " ctermfg=" . s:bluedrake_color(a:fg)[0]
    endif
    if a:bg != ""
        exec "hi " . a:group . " ctermbg=" . s:bluedrake_color(a:bg)[0]
    endif
    if a:attr != ""
        exec "hi " . a:group . " cterm=" . a:attr
    endif
endfunction

function! <SID>Hi_gui(group, fg, bg, attr)
    if a:fg != ""
        exec "hi " . a:group . " guifg=#" . s:bluedrake_color(a:fg)[1]
    endif
    if a:bg != ""
        exec "hi " . a:group . " guibg=#" . s:bluedrake_color(a:bg)[1]
    endif
    if a:attr != ""
        exec "hi " . a:group . " gui=" . a:attr
    endif
endfunction


"" Standard highlighting -----------------------------------

" *Comment
call <SID>Hi_gui("Comment", "base00", "", "italic")
call <SID>Hi_cterm("Comment", "base00", "", "")

" *Constant (String, Character, Number, Boolean, Float)
call <SID>Hi_all("Constant", "cyan", "", "none")
call <SID>Hi_gui("String", "cyan", "", "italic")
call <SID>Hi_cterm("String", "cyan", "", "")

" *Identifier (Function)
call <SID>Hi_all("Identifier", "violet", "", "none")

" *Statement (Conditional, Repeat, Label, Operator, Keyword, Exception)
call <SID>Hi_all("Statement", "yellow", "", "none")

" *PreProc (Include, Define, Macro, PreCondit)
call <SID>Hi_all("PreProc", "orange", "", "none")

" *Type (StorageClass Structure, Typedef)
call <SID>Hi_all("Type", "green", "", "none")

" *Special (SpecialChar, Tag, Delimiter, SpecialComment, Debug)
call <SID>Hi_all("Special", "magenta", "", "none")
call <SID>Hi_all("Delimiter", "base00", "", "none")

" *Underline
call <SID>Hi_all("Underlined", "blue", "", "underline")

" *Ignore
call <SID>Hi_all("Ignore", "blue", "", "none")

" *Error
call <SID>Hi_all("Error", "base03", "red", "bold")

" *Todo
call <SID>Hi_all("Todo", "base0", "base03", "bold")


"" Default highlighting ------------------------------------
call <SID>Hi_all("Cursor", "base03", "base0", "")
call <SID>Hi_all("CursorIM", "base03", "base0", "")
call <SID>Hi_all("Directory", "violet", "", "")
call <SID>Hi_all("DiffAdd", "green", "base02", "")
call <SID>Hi_all("DiffDelete", "red", "base02", "")
call <SID>Hi_all("DiffChange", "", "base02", "")
call <SID>Hi_all("DiffText", "base0", "base01", "none")
call <SID>Hi_all("ErrorMsg", "base03", "red", "bold")
call <SID>Hi_all("VertSplit", "base01", "base03", "none")
call <SID>Hi_all("Folded", "base0", "base03", "")
call <SID>Hi_all("FoldColumn", "base00", "base02", "")
call <SID>Hi_all("SignColumn", "base00", "base02", "")
call <SID>Hi_all("IncSearch", "yellow", "base03", "")
call <SID>Hi_all("LineNr", "base00", "base02", "")
call <SID>Hi_all("ModeMsg", "green", "", "")
call <SID>Hi_all("MoreMsg", "green", "", "")
call <SID>Hi_all("NonText", "base0", "", "none")
call <SID>Hi_all("Normal", "blue", "base03", "")
call <SID>Hi_all("Question", "green", "", "")
call <SID>Hi_all("Search", "base03", "yellow", "")
call <SID>Hi_all("SpecialKey", "base0", "", "")
call <SID>Hi_all("StatusLine", "base02", "base1", "reverse")
call <SID>Hi_all("StatusLineNC", "base02", "base01", "reverse")
call <SID>Hi_all("Title", "orange", "", "none")
call <SID>Hi_all("Visual", "base03", "base0", "")
call <SID>Hi_all("VisualNOS", "base03", "base0", "")
call <SID>Hi_all("WarningMsg", "red", "", "")
call <SID>Hi_all("WildMenu", "blue", "base02", "reverse")

if has('nvim')
    call <SID>Hi_all("Substitute", "magenta", "base02", "")
    call <SID>Hi_all("QuickFixLine", "magenta", "", "")
endif

if version >= 701
    call <SID>Hi_all("CursorColumn", "", "base01", "none")
    call <SID>Hi_all("CursorLine", "", "base02", "none")
    call <SID>Hi_all("MatchParen", "magenta", "base01", "bold")
    call <SID>Hi_all("PMenu", "base0", "base02", "none")
    call <SID>Hi_all("PMenuSel", "base02", "blue", "")
    call <SID>Hi_all("PMenuSbar", "base00", "base01", "")
    call <SID>Hi_all("PMenuThumb", "base00", "base01", "")
    call <SID>Hi_all("TabLine", "base00", "base02", "none")
    call <SID>Hi_all("TabLineFill", "base02", "blue", "reverse")
    call <SID>Hi_all("TabLineSel", "base1", "base03", "")
    call <SID>Hi_cterm("SpellBad", "red", "base03", "underline")
    call <SID>Hi_cterm("SpellCap", "magenta", "base03", "underline")
    call <SID>Hi_cterm("SpellLocal", "cyan", "base03", "underline")
    call <SID>Hi_cterm("SpellRare", "cyan", "base03", "underline")
endif

if version >= 703
    call <SID>Hi_all("Conceal", "blue", "base03", "")
    call <SID>Hi_all("ColorColumn", "", "base02", "none")
endif

if version >= 704
    call <SID>Hi_all("CursorLineNr", "base1", "base02", "none")
endif

if version >= 800 || has('nvim')
    call <SID>Hi_all("EndOfBuffer", "base01", "base03", "none")
endif


"" HTML ----------------------------------------------------
call <SID>Hi_all("htmlH1", "orange", "", "bold")
call <SID>Hi_all("htmlH2", "violet", "", "bold")
call <SID>Hi_all("htmlH3", "green", "", "bold")
call <SID>Hi_all("htmlH4", "magenta", "", "bold")
call <SID>Hi_all("htmlH5", "cyan", "", "bold")
call <SID>Hi_all("htmlH6", "yellow", "", "bold")
call <SID>Hi_gui("htmlItalic", "", "", "italic")
call <SID>Hi_cterm("htmlItalic", "", "", "underline")


"" Markdown (tpope) ----------------------------------------
call <SID>Hi_all("markdownHeadingDelimiter", "base00", "", "none")
call <SID>Hi_all("markdownOrderedListMarker", "base0", "", "none")
call <SID>Hi_all("markdownListMarker", "base0", "", "none")
call <SID>Hi_all("markdownRule", "base00", "", "none")
call <SID>Hi_all("markdownUrl", "yellow", "", "underline")
call <SID>Hi_all("markdownCode", "cyan", "", "none")


"" Pandoc --------------------------------------------------
call <SID>Hi_all("pandocYAMLHeader", "orange", "", "")
call <SID>Hi_all("pandocAtxHeader", "orange", "", "")
call <SID>Hi_all("pandocSetexHeader", "orange", "", "")
call <SID>Hi_all("pandocAtxStart", "orange", "", "")
call <SID>Hi_all("pandocListItemBullet", "base0", "", "")
call <SID>Hi_all("pandocUListItemBullet", "base0", "", "")
call <SID>Hi_all("pandocListItemBulletId", "base0", "", "")
call <SID>Hi_all("pandocPCite", "cyan", "", "")
call <SID>Hi_all("pandocICite", "cyan", "", "")
call <SID>Hi_all("pandocCiteAnchor", "cyan", "", "")
call <SID>Hi_all("pandocCiteKey", "cyan", "", "")
call <SID>Hi_all("pandocCiteLocator", "violet", "", "")
call <SID>Hi_all("pandocDelimitedCodeBlockLanguage", "base0", "", "")
call <SID>Hi_all("pandocDelimitedCodeBlockStart", "base0", "", "")
call <SID>Hi_all("pandocDelimitedCodeBlockEnd", "base0", "", "")
call <SID>Hi_all("pandocReferenceLabel", "violet", "", "") " wrapped citations
call <SID>Hi_all("pandocReferenceURL", "red", "", "")


"" Unite ---------------------------------------------------
call <SID>Hi_all("uniteMarkedLine", "magenta", "", "bold")
call <SID>Hi_all("uniteMarkedIcon", "magenta", "", "")
call <SID>Hi_all("uniteCandidateSourceName", "red", "", "")
call <SID>Hi_all("uniteQuickMatchText", "red", "", "")
call <SID>Hi_all("uniteCandidateIcon", "red", "", "")
call <SID>Hi_all("uniteCandidateInputKeyword", "yellow", "", "") " matched text
call <SID>Hi_all("uniteStatusNormal", "base0", "base02", "")
call <SID>Hi_all("uniteStatusHead", "base0", "base02", "")
call <SID>Hi_all("uniteStatusSourceNames", "base00", "base02", "")
call <SID>Hi_all("uniteStatusSourceCandidates", "base1", "base02", "")
call <SID>Hi_all("uniteStatusMessage", "violet", "base02", "")
call <SID>Hi_all("uniteStatusLineNR", "base0", "base02", "")
call <SID>Hi_all("uniteInputPrompt", "red", "", "")
call <SID>Hi_all("uniteInputLine", "base1", "", "") "input text
call <SID>Hi_all("uniteInputCommand", "green", "", "")


"" Bibtex --------------------------------------------------
call <SID>Hi_all("bibType", "violet", "", "")
call <SID>Hi_all("bibEntryKw", "blue", "", "")
call <SID>Hi_all("bibKey", "yellow", "", "")
call <SID>Hi_all("bibVariable", "blue", "", "")
call <SID>Hi_all("bibNSEntryKw", "blue", "", "")


"" BufExplorer ---------------------------------------------
call <SID>Hi_all("bufExplorerActBuf", "blue", "", "")
call <SID>Hi_all("bufExplorerAltBuf", "blue", "", "")
call <SID>Hi_all("bufExplorerCurBuf", "yellow", "", "")
call <SID>Hi_all("bufExplorerHidBuf", "blue", "", "")
call <SID>Hi_all("bufExplorerLockedBuf", "blue", "", "")
call <SID>Hi_all("bufExplorerModBuf", "blue", "", "")
call <SID>Hi_all("bufExplorerUnlBuf", "base00", "", "")
call <SID>Hi_all("bufExplorerInactBuf", "base00", "", "")


"" Git commit ----------------------------------------------
call <SID>Hi_all("gitcommitSummary", "orange", "", "")
call <SID>Hi_all("gitcommitOnBranch", "base00", "", "")
call <SID>Hi_all("gitcommitBranch", "violet", "", "")
call <SID>Hi_all("gitcommitType", "blue", "", "")
call <SID>Hi_all("gitcommitHeader", "yellow", "", "")
call <SID>Hi_all("gitcommitFile", "blue", "", "")


"" Git -----------------------------------------------------
call <SID>Hi_all("diffAdded", "green", "base02", "")
call <SID>Hi_all("diffRemoved", "red", "base02", "none")
call <SID>Hi_all("diffChanged", "blue", "base02", "none")
call <SID>Hi_all("diffLine", "violet", "", "bold")
call <SID>Hi_all("diffFile", "magenta", "", "bold")
call <SID>Hi_all("diffNewFile", "blue", "", "")
call <SID>Hi_all("diffOldFile", "blue", "", "")
call <SID>Hi_all("diffIndexLine", "blue", "", "")
call <SID>Hi_all("diffSubName", "blue", "", "")
call <SID>Hi_all("gitIdentity", "blue", "", "")
call <SID>Hi_all("gitEmail", "blue", "", "")
call <SID>Hi_all("gitEmailDelimiter", "base00", "", "")
call <SID>Hi_all("gitDate", "blue", "", "")
call <SID>Hi_all("gitDateHeader", "blue", "", "")
call <SID>Hi_all("gitHash", "cyan", "", "")


"" Make ----------------------------------------------------
call <SID>Hi_all("makeTarget", "orange", "", "")
call <SID>Hi_all("makeInclude", "blue", "", "")


"" Extra StatusLine colors ---------------------------------
call <SID>Hi_all("StatusLineBold", "base1", "base02", "bold")
call <SID>Hi_all("StatusLineRed", "red", "base02", "")
call <SID>Hi_all("StatusLineOrange", "orange", "base02", "")


"" vim -----------------------------------------------------
call <SID>Hi_all("vimCommand", "blue", "", "none")


"" tex -----------------------------------------------------
call <SID>Hi_all("texCite", "cyan", "", "none")
call <SID>Hi_all("texRefZone", "violet", "", "none")


"" ctrlp ---------------------------------------------------
call <SID>Hi_all("CtrlPNoEntries", "red", "", "")
call <SID>Hi_all("CtrlPMatch", "yellow", "", "")
call <SID>Hi_all("CtrlPMode1", "green", "base02", "")
call <SID>Hi_all("CtrlPMode2", "base00", "base02", "")

"" YAML ----------------------------------------------------
call <SID>Hi_all("yamlDocumentStart", "base00", "", "")
call <SID>Hi_all("yamlKeyValueDelimiter", "base00", "", "")


"" vim-better-whitespace -----------------------------------
call <SID>Hi_all("ExtraWhitespace", "", "base00", "")


"" gitgutter  ----------------------------------------------
call <SID>Hi_all("GitGutterAdd", "green", "base02", "")
call <SID>Hi_all("GitGutterChange", "blue", "base02", "")
call <SID>Hi_all("GitGutterDelete", "red", "base02", "")
call <SID>Hi_all("GitGutterChangeDelete", "violet", "base02", "")


"" R -------------------------------------------------------
call <SID>Hi_all("rDollar", "base00", "", "")


"" GV ------------------------------------------------------
call <SID>Hi_all("gvAuthor", "base00", "", "")

