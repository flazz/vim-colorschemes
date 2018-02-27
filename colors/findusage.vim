" Maintainer:  Alexei Mozhaev
" Last Change: 14-Jun-11

let $utags = "utags"

if empty($proj)
  let $proj="."
endif

"------------------------------------------------------------------------
func! FindUsageShowResults( title )
"------------------------------------------------------------------------
  copen
  set cul
  set number
  "silent exe "file ".a:title
endfunc

"------------------------------------------------------------------------
func! FindCodeFilesCmd( path )
"------------------------------------------------------------------------
  return "find ".a:path." -type f -name '*.[ch]' -o -name '*.[ch]pp' -o -name '*.[ch]xx' -o -name '*.py' -o -name '*.sh'"
endfunc

"------------------------------------------------------------------------
func! AddCmdFilter( cmd, filter )
"------------------------------------------------------------------------
  return " ( ".a:cmd." ) | " . a:filter
endfunc

"------------------------------------------------------------------------
func! AddEqualFilesFilter( cmd )
"------------------------------------------------------------------------
  return AddCmdFilter( a:cmd, "awk -F/ '{ if(files[$NF]!=1) {files[$NF]=1; print;} }'" )
endfunc

"------------------------------------------------------------------------
func! FindTagFiles( tagname, filter, proj_only )
"------------------------------------------------------------------------
  let cmd = ''

  if !empty($proj)
    let cmd .= FindCodeFilesCmd( "$proj -maxdepth 1" ) . ";"
  endif

  if $proj != "."
    let cmd .= FindCodeFilesCmd( "\. -maxdepth 1" ) . ";"
  endif

  if !a:proj_only
    let cmd .= "$utags -t " . a:tagname . ";"
  endif

  if !empty(a:filter)
    let cmd = AddCmdFilter( cmd, a:filter )
  endif

  let cmd = AddEqualFilesFilter( cmd )

  "echo "Performing command: ".cmd
  return system( cmd )
endfunc

"------------------------------------------------------------------------
func! FindTextFiles( text )
"------------------------------------------------------------------------
  let cmd = ''

  if !empty($proj)
    let cmd .= "find \"$proj\" -maxdepth 1 -type f -name '*';"
  endif

  "if filereadable($utags)
    "let cmd .= "$utags -q -t -l " . a:text . ";"
  "endif

  let cmd = AddEqualFilesFilter( cmd )

  return system( cmd )
endfunc

" This function searches identificator usage via wus (lxr_ident)
" and shows the usage list in the Error window of vim
"------------------------------------------------------------------------
func! FindTagUsage( tagname, file_regexp, proj_only )
"------------------------------------------------------------------------
  echo "Searching usage of ".a:tagname." ..."

  let grep_cmd = ""
  if strlen( a:file_regexp ) > 0
    let grep_cmd = "grep '".a:file_regexp."'"
  endif

  let flist = FindTagFiles( a:tagname, grep_cmd, a:proj_only )
  let flist = substitute( flist, "\n", " ", "g" )
  if !empty(flist)
      exec 'silent vimgrep! "\<'.a:tagname.'\>" '.flist
      call FindUsageShowResults( a:tagname )
  else
      echo "Usage of " . a:tagname . " was not found"
  endif
endfunc

" This function searches identificator usage via wus (lxr_ident)
" and shows the usage list in the Error window of vim
"------------------------------------------------------------------------
func! FindTextUsage( text )
"------------------------------------------------------------------------
  echo "Searching text ".a:text." ..."

  let flist = FindTextFiles( a:text )
  let flist = substitute( flist, "\n", " ", "g" )
  exec 'silent vimgrep! "'.a:text.'" '.flist

  call FindUsageShowResults( a:text )
endfunc

" Perform usage search for the word under cursor
map <Leader>U :call FindTagUsage( expand("<cword>"), "", 0 )<CR>
map <Leader>P :call FindTagUsage( expand("<cword>"), "", 1 )<CR>
map <Leader>D :call FindTagUsage( expand("<cword>"), "\.h$", 0 )<CR>
map <Leader>T :call FindTextUsage( expand("<cword>") )<CR>

" Hotkeys for iterating through the items found with FindTextUsage():
" (Ctrl+k - moving upward through the list, Ctrl+j - moving downward):
map <C-k> :cprevious<CR>
map <C-j> :cnext<CR>
" Alternative mapping (if mappings above are needed for another actions):
" map <F6> :cprevious<CR>
" map <F7> :cnext<CR>
