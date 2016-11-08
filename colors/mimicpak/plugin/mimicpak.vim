"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  Script File:  mimicpak.vim
"  Last Change:  2009-10-17  [21:23:56]
"      Version:  115
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"  Description:  Defines the menu entries for the "MimicPak" colorschemes.
"                Creates a submenu "MimicPak" under the "Themes" menu,
"                which is also used by the Robert Melton's ColorSamplerPack.
"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
" Setup {{{1
"~~~~~~~
if exists("g:loaded_mimicpak") || !has("menu") || version < 600
  finish
endif
let g:loaded_mimicpak = 115

" need the "<>", so store & reset compatible options
let s:saved_cpo = &cpo
set cpo&vim

" Script Functions {{{1
"~~~~~~~~~~~~~~~~~~
" Function: s:MakeMenu(name, cmd, ...) {{{2
"   Creates a menu for all modes and with an optional tooltip.
" Parameters:
"   name--the menu name as displayed on screen, can also contain submenus.
"           Spaces are escaped.
"    cmd--the command that this menu executes. Doesn't need the starting ":"
"           and the ending "<CR>".
"    a:1--the tooltip for this menu (is only set for X11 & Win32 GUI).
" Example:
"   call s:MakeMenu( "Menu.-separator-", "")
"   call s:MakeMenu( "Menu.Sub&Menu.What's up doc" ,
"                   \  "echo 'Whats up doc'",
"                   \  "Greets you..." )
"
function! s:MakeMenu(name, cmd, ...)
  let name = escape(a:name, "\ ")
  execute "amenu " . name . " :" . a:cmd . "<CR>"
  if 0 < a:0 && (has("x11") || has("gui_win32"))
    execute "tmenu " . name . " " . a:1
  endif
endfunction "}}}2
"}}}1
" Create the menus {{{1
"~~~~~~~~~~~~~~~~~~
" font style selection menu {{{2
call s:MakeMenu("T&hemes.&MimicPak.Choose &Font style.&None<Tab>(default)",
      \ "unlet! g:mimic_font_style",
      \ "MimicPak colorschemes won't use bold nor italic fonts." )
call s:MakeMenu("T&hemes.&MimicPak.Choose &Font style.Use &Bolds",
      \ "let g:mimic_font_style=1",
      \ "MimicPak colorschemes will use bold fonts.")
call s:MakeMenu("T&hemes.&MimicPak.Choose &Font style.Use &Italics",
      \ "let g:mimic_font_style=2",
      \ "MimicPak colorschemes will use italic fonts.")
call s:MakeMenu("T&hemes.&MimicPak.Choose &Font style.Use Bolds &and Italics",
      \ "let g:mimic_font_style=3",
      \ "MimicPak colorschemes will use italic and bold fonts.")

" colorize GUI? menu {{{2
if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
  call s:MakeMenu("T&hemes.&MimicPak.&Colorize GUI?.&Yes",
        \ "let g:mimic_colorize_gui=1",
        \ "MimicPak colorschemes will set colors for Toolbar, Scrollbar, Menu.")
  call s:MakeMenu("T&hemes.&MimicPak.&Colorize GUI?.&No<TAB>(default)",
        \ "unlet! g:mimic_colorize_gui",
        \ "MimicPak colorschemes will NOT set colors for Toolbar, Scrollbar, Menu.")
endif

" black/almost-black schemes {{{2
call s:MakeMenu("T&hemes.&MimicPak.-spMMPblack-", "")
" Astroboy, the clone of astronaut.vim {{{3
  " grey20 and black
call s:MakeMenu("T&hemes.&MimicPak.&Astroboy.bgcolor == &grey20 [almost black]<TAB>(default)",
      \ "unlet! g:mimic_astroboy_dark g:mimic_astroboy_alt<BAR>color astroboy",
      \ "astroboy.vim: astronaut.vim clone (see ':h astroboy.vim')")
call s:MakeMenu("T&hemes.&MimicPak.&Astroboy.bgcolor == &black",
      \ "unlet! g:mimic_astroboy_alt<BAR>let g:mimic_astroboy_dark=1<BAR>color astroboy",
      \ "astroboy.vim: astronaut.vim clone (see ':h astroboy.vim')")
  " blue and darkblue backgrounds
call s:MakeMenu("T&hemes.&MimicPak.&Astroboy.bgcolor == b&lue",
      \ "unlet! g:mimic_astroboy_dark<BAR>let g:mimic_astroboy_alt=1<BAR>color astroboy",
      \ "astroboy.vim: astronaut.vim clone (see ':h astroboy.vim')")
call s:MakeMenu("T&hemes.&MimicPak.&Astroboy.bgcolor == &darkblue",
      \ "let g:mimic_astroboy_alt=1<BAR>let g:mimic_astroboy_dark=1<BAR>color astroboy",
      \ "astroboy.vim: astronaut.vim clone (see ':h astroboy.vim')")
  " help
call s:MakeMenu("T&hemes.&MimicPak.&Astroboy.-spMMPAstroboy000-", "")
call s:MakeMenu("T&hemes.&MimicPak.&Astroboy.&Help<tab>:h astroboy",
      \ "help astroboy.vim",
      \ "Shows the help for the AstroBoy colorscheme.")
" }}}3
" Big Bang, (Feuer Frei! Bang! Bang!) {{{3
  " grey20 and black
call s:MakeMenu("T&hemes.&MimicPak.&Big Bang.bgcolor == &grey20 [almost black]<TAB>(default)",
      \ "unlet! g:mimic_bigbang_dark g:mimic_bigbang_alt<BAR>color bigbang",
      \ "bigbang.vim: experimental colorscheme (see ':h bigbang.vim')")
call s:MakeMenu("T&hemes.&MimicPak.&Big Bang.bgcolor == &black",
      \ "unlet! g:mimic_bigbang_alt<BAR>let g:mimic_bigbang_dark=1<BAR>color bigbang",
      \ "bigbang.vim: experimental colorscheme (see ':h bigbang.vim')")
  " blue and darkblue backgrounds
call s:MakeMenu("T&hemes.&MimicPak.&Big Bang.bgcolor == b&lue",
      \ "unlet! g:mimic_bigbang_dark<BAR>let g:mimic_bigbang_alt=1<BAR>color bigbang",
      \ "bigbang.vim: experimental colorscheme (see ':h bigbang.vim')")
call s:MakeMenu("T&hemes.&MimicPak.&Big Bang.bgcolor == &darkblue",
      \ "let g:mimic_bigbang_alt=1<BAR>let g:mimic_bigbang_dark=1<BAR>color bigbang",
      \ "bigbang.vim: experimental colorscheme (see ':h bigbang.vim')")
  " help
call s:MakeMenu("T&hemes.&MimicPak.&Big Bang.-spMMPBigBan000-", "")
call s:MakeMenu("T&hemes.&MimicPak.&Big Bang.&Help<tab>:h bigbang",
      \ "help bigbang.vim",
      \ "How did everything begin? Shows help for Big Bang colorscheme.")
" }}}3
" Dejavu... could have been called DNB, but it's called Dejavu {{{3
  " for dark backgrounds, defaults
call s:MakeMenu("T&hemes.&MimicPak.&Deja Vu.for Dark bg (bgcolor == &grey20 [almost black])",
      \ "unlet! g:mimic_dejavu_dark g:mimic_dejavu_alt<BAR>set bg=dark<BAR>color dejavu",
      \ "dejavu.vim: scheme with nice options (see ':h dejavu.vim' to know them)")
call s:MakeMenu("T&hemes.&MimicPak.&Deja Vu.for Dark bg (bgcolor == &black) ",
      \ "unlet! g:mimic_dejavu_alt<BAR>let g:mimic_dejavu_dark=1<BAR>set bg=dark<BAR>color dejavu",
      \ "dejavu.vim: scheme with nice options (see ':h dejavu.vim' to know them)")
  " for dark backgrounds, blue background
call s:MakeMenu("T&hemes.&MimicPak.&Deja Vu.for Dark bg (bgcolor == b&lue)",
      \ "unlet! g:mimic_dejavu_dark<BAR>let g:mimic_dejavu_alt=1<BAR>set bg=dark<BAR>color dejavu",
      \ "dejavu.vim: scheme with nice options (see ':h dejavu.vim' to know them)")
call s:MakeMenu("T&hemes.&MimicPak.&Deja Vu.for Dark bg (bgcolor == &darkblue) ",
      \ "let g:mimic_dejavu_alt=1<BAR>let g:mimic_dejavu_dark=1<BAR>set bg=dark<BAR>color dejavu",
      \ "dejavu.vim: scheme with nice options (see ':h dejavu.vim' to know them)")
  " for light backgrounds
call s:MakeMenu("T&hemes.&MimicPak.&Deja Vu.-spMMPDejaVu001-", "")
call s:MakeMenu("T&hemes.&MimicPak.&Deja Vu.for Light bg (bgcolor == &white)",
      \ "unlet! g:mimic_dejavu_dark<BAR>set bg=light<BAR>color dejavu",
      \ "dejavu.vim: scheme with nice options (see ':h dejavu.vim' to know them)")
call s:MakeMenu("T&hemes.&MimicPak.&Deja Vu.for Light bg (bgcolor == &lightgray)",
      \ "let g:mimic_dejavu_dark=1<BAR>set bg=light<BAR>color dejavu",
      \ "dejavu.vim: scheme with nice options (see ':h dejavu.vim' to know them)")
  " help
call s:MakeMenu("T&hemes.&MimicPak.&Deja Vu.-spMMPDejaVu002-", "")
call s:MakeMenu("T&hemes.&MimicPak.&Deja Vu.&Help<tab>:h dejavu",
      \ "help dejavu.vim",
      \ "Shows the help for the dejavu colorscheme.")
"}}}3
" peaksea (aka "ps_color") clone
call s:MakeMenu("T&hemes.&MimicPak.&PS Clone",
      \ "color psclone",
      \ "psclone.vim: scheme cloned from peaksea (ps_color) but with smoother colors")
" strange thingy
call s:MakeMenu("T&hemes.&MimicPak.&Zen DNB",
      \ "color zendnb",
      \ "zendnb.vim: a dark colorscheme for VIM/GVIM (try it with Italic fonts)")

" blue/purple schemes {{{2
call s:MakeMenu("T&hemes.&MimicPak.-spMMPblue-", "")
call s:MakeMenu("T&hemes.&MimicPak.Deep &Blue",
      \ "color deepblue",
      \ "deepblue.vim: colors for people who love Dark Blue backgrounds.")
call s:MakeMenu("T&hemes.&MimicPak.&MAsmEd's originals.bgcolor == dark &purple<TAB>(default)",
      \ "unlet! g:mimic_masmed_alt<BAR>color masmed",
      \ "masmed.vim: the original defaults from the cool MAsmEd (IDE for MASM, windoze)")
call s:MakeMenu("T&hemes.&MimicPak.&MAsmEd's originals.bgcolor == &grey20 (almost black)",
      \ "let g:mimic_masmed_alt=1<BAR>color masmed",
      \ "masmed.vim: MAsmEd's defaults on a Grey20 bg.")

" green/cyan schemes {{{2
call s:MakeMenu("T&hemes.&MimicPak.-spMMPgreen-", "")
call s:MakeMenu("T&hemes.&MimicPak.&Anokha.bgcolor == dark &teal<TAB>(default)",
      \ "unlet! g:mimic_anokha_alt<BAR>color anokha",
      \ "anokha.vim: colors from the lisp editor J, uses a Dark Teal bg")
call s:MakeMenu("T&hemes.&MimicPak.&Anokha.bgcolor == dark &green",
      \ "let g:mimic_anokha_alt=1<BAR>color anokha",
      \ "anokha.vim: colors from the lisp editor J, uses a Dark Green bg")
call s:MakeMenu("T&hemes.&MimicPak.Parado&x.bgcolor == dark &teal<TAB>(default)",
      \ "unlet! g:mimic_paradox_alt<BAR>color paradox",
      \ "paradox.vim: colors from MAsmEd. Looks like old Emacs (try Italics fonts)")
call s:MakeMenu("T&hemes.&MimicPak.Parado&x.bgcolor == &grey20 (almost black)",
      \ "let g:mimic_paradox_alt=1<BAR>color paradox",
      \ "paradox.vim: colors from MAsmEd on an almost black bg.")

" white/lightgray schemes {{{2
call s:MakeMenu("T&hemes.&MimicPak.-spMMPlight-", "")
call s:MakeMenu("T&hemes.&MimicPak.&Grey House",
      \ "color greyhouse",
      \ "greyhouse.vim: a scheme from MAsmEd, uses a Gray bg (try it with Bold fonts)")
call s:MakeMenu("T&hemes.&MimicPak.&Gaea",
      \ "color gaea",
      \ "gaea.vim: natural colors (try it with Bold+Italics)")
call s:MakeMenu("T&hemes.&MimicPak.Imperia&l",
      \ "color imperial",
      \ "imperial.vim: royal colors for GVIM (try it with Bold+Italics)")
call s:MakeMenu("T&hemes.&MimicPak.&IntelliJ",
      \ "color intellij",
      \ "intellij.vim: default IntelliJIDEA's colors (try it with Bold+Italics)")
call s:MakeMenu("T&hemes.&MimicPak.Mickey$oft",
      \ "color mickeysoft",
      \ "mickeysoft.vim: yet another M$ scheme (try it with Bold+Italics fonts)")
call s:MakeMenu("T&hemes.&MimicPak.&Omen",
      \ "color omen",
      \ "omen.vim: simple red/black scheme (try it with Bold+Italics fonts)")
call s:MakeMenu("T&hemes.&MimicPak.&SCAME (EMACS)",
      \ "color scame",
      \ "scame.vim: EMACS' default colorscheme")
call s:MakeMenu("T&hemes.&MimicPak.&Vim Hut.for &Dark bg",
      \ "set bg=dark<BAR>color vimhut",
      \ "vimhut.vim: gVim default colors for dark backgrounds (try it with Italic fonts)")
call s:MakeMenu("T&hemes.&MimicPak.&Vim Hut.for &Light bg",
      \ "set bg=light<BAR>color vimhut",
      \ "vimhut.vim: gVim default colors, but with more Gray (try it with Bold fonts)")

" help {{{2
call s:MakeMenu("T&hemes.&MimicPak.-spMMPhelp-", "")
call s:MakeMenu("T&hemes.&MimicPak.&Help<tab>:h mimicpak",
      \ "help mimicpak",
      \ "Shows the MimicPak colorschemes' help.")
"}}}1
" Cleanup {{{1
"~~~~~~~~~
delfunction s:MakeMenu

" restore user settings
let &cpo = s:saved_cpo
unlet s:saved_cpo

" vim:et:sw=2:ts=2:tw=78:nowrap:
" vim600:fdc=2:fdm=marker:
