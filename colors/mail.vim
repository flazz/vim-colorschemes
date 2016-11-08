" "Vim syntax file
" Language:		Mail file
" Original Script:	Felix von Leitner <leitner@math.fu-berlin.de>
" Modified:		Gautam Iyer <gautam@math.uchicago.edu>
" Last Change:		Wed 05 Nov 2003 12:18:30 AM CST
"
" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

let g:colors_name = "mail"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light



" The mail header is recognized starting with a "keyword:" line and ending
" with an empty line or other line that can't be in the header.
" All lines of the header are highlighted
"
" Added gi1242 Tue 04 Nov 2003 09:57:02 PM CST:
" Headers of quoted messages (quoted with >) are also highlighted.
"
" For "From " matching case is required, not for the rest.
syn region	mailHeader	start="^From " skip="^[ \t]" end="^[-A-Za-z0-9/]*[^-A-Za-z0-9/:]"me=s-1 end="^[^:]*$"me=s-1 end="^---*" contains=mailHeaderKey,mailSubject,mailEmail

syn case ignore

syn region	mailHeader	start="^\z(\(> \?\)*\)\(Newsgroups:\|From:\|To:\|Cc:\|Bcc:\|Reply-To:\|Subject:\|Return-Path:\|Received:\|Date:\|Replied:\)" skip="^\z1[ \t]" end="^\z1[^:]*\(\s\|$\)"me=s-1 end="^\z1\@!"me=s-1 end="^\z1\(> \?\)\+"me=s-1 contains=mailHeaderKey,mailSubject,mailEmail

syn region	mailHeaderKey	contained start="^\(> \?\)*\zs\(From\|To\|Cc\|Bcc\|Reply-To\).*" skip=",$" end="$" contains=mailEmail
syn match	mailHeaderKey	contained "^\(> \?\)*\zsDate"

syn match	mailSubject	contained "^\(> \?\)*\zsSubject.*"

syn match	mailEmail	contained "[_=a-z\./+0-9-]\+@[a-z0-9\./\-]\+"
syn match	mailEmail	contained "<.\{-}>"

syn region	mailSignature	start="^\z(\(> \?\)*\)-- *$" end="^\z1$" end="^\z1\@!"me=s-1 end="^\z1\(> \?\)\+"me=s-1 contains=mailURL


" even and odd quoted lines
" removed ':', it caused too many bogus highlighting
" order is imporant here!
" gi1242 added the contians field Wed 12 Mar 2003 03:51:27 PM CST 
syn match	mailQuoted1	"^\([a-z]\+>\|[]|}>]\).*$" contains=mailURL,mailSignature,mailHeader
syn match	mailQuoted2	"^\(\([a-z]\+>\|[]|}>]\)[ \t]*\)\{2}.*$" contains=mailURL,mailSignature,mailHeader
syn match	mailQuoted3	"^\(\([a-z]\+>\|[]|}>]\)[ \t]*\)\{3}.*$" contains=mailURL,mailSignature,mailHeader
syn match	mailQuoted4	"^\(\([a-z]\+>\|[]|}>]\)[ \t]*\)\{4}.*$" contains=mailURL,mailSignature,mailHeader
syn match	mailQuoted5	"^\(\([a-z]\+>\|[]|}>]\)[ \t]*\)\{5}.*$" contains=mailURL,mailSignature,mailHeader
syn match	mailQuoted6	"^\(\([a-z]\+>\|[]|}>]\)[ \t]*\)\{6}.*$" contains=mailURL,mailSignature,mailHeader

" gi1242 added url's Wed 12 Mar 2003 03:56:30 PM CST
" syntax match mailURL `\(\(\(https\?\|ftp\|gopher\)://\|\(mailto\|file\|news\):\)[^' 	<>"]\+\|\(www\|web\|w3\)[a-z0-9_-]*\.[a-z0-9._-]\+\.[^' 	<>"]\+\)[^' 	&.,;(){}<>":]`
syntax match mailURL `\(\(\(https\?\|ftp\|gopher\)://\|\(mailto\|file\|news\):\)[^' 	<>"]\+\|\(www\|web\|w3\)[a-z0-9_-]*\.[a-z0-9._-]\+\.[^' 	<>"]\+\)[a-z0-9/]`
syntax match mailURL "[_=a-z\./+0-9-]\+@[a-z0-9._-]\+\w\{2}"

 
" Need to sync on the header.  Assume we can do that within a hundred lines
syn sync lines=100

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_ahdl_syn_inits")
  if version < 508
    let did_ahdl_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink mailHeaderKey		Type
  HiLink mailHeader		Statement
  HiLink mailQuoted1		Comment
  HiLink mailQuoted3		Comment
  HiLink mailQuoted5		Comment
  HiLink mailQuoted2		Identifier
  HiLink mailQuoted4		Identifier
  HiLink mailQuoted6		Identifier
  HiLink mailSignature		PreProc
  HiLink mailEmail		Special
  HiLink mailURL		Special
  HiLink mailSubject		String

  delcommand HiLink
endif

let b:current_syntax = "mail"

" vim: ts=8
