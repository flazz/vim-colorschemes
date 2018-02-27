scriptencoding utf-8
if exists('g:landscape_syntax_vimshell') && g:landscape_syntax_vimshell == 0
  finish
endif

if version < 700
  syntax clear
elseif exists('b:current_syntax')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

" get alias commands
let s:alias_table = exists('b:vimshell') ? b:vimshell.alias_table : {}
let s:commands = split('git,hub,ls,python,diff,ghc,ghci,haddock,cabal,man,make', ',')
let s:command_match = {}
for s:i in s:commands
  let s:command_match[s:i] = s:i
  let s:command_match[s:i] .= '\|\%(sudo\s\|;\|&&\|||\)\s*'.s:i
endfor
for s:j in keys(s:alias_table)
  for s:i in s:commands
    if s:alias_table[s:j] =~ '\<'.s:i.'\>'
      let s:command_match[s:i] .= '\|\%(.*\%(;\|&&\|||\)\s*\)\?'.s:j
    endif
  endfor
endfor

" error
syntax region vimshellError start=+^\*\*\* + end=+$+ contains=vimshellErrorHidden oneline
syntax region vimshellError start=+!!!+ end=+!!!+ contains=vimshellErrorHidden oneline
syntax keyword vimshellError error Error ERROR warning Warning Worning Overfull
if has('conceal')
  syntax match vimshellErrorHidden '^\*\*\*' contained conceal
  syntax match vimshellErrorHidden '!!!\(vimshell: \)\?' contained conceal
else
  syntax match vimshellErrorHidden '^\*\*\* ' contained
  syntax match vimshellErrorHidden '!!!' contained
endif
highlight default link vimshellError Error
highlight default link vimshellErrorHidden Ignore

" user prompt
syntax match vimshellUserPrompt '^\[%\] $' contains=vimshellUserPromptHidden contained
syntax match vimshellUserPromptLine '^\[%\] .*$' contains=vimshellUserPromptHidden,vimshellUserPrompt
if has('conceal')
  syntax match vimshellUserPromptHidden '^\[%\] ' contained conceal
else
  syntax match vimshellUserPromptHidden '^\[%\] ' contained
endif
highlight default link vimshellUserPrompt Prompt
highlight default link vimshellUserPromptLine Preproc
highlight default link vimshellUserPromptHidden Ignore

" prompt
let s:prompt = exists('g:vimshell_prompt_pattern') && g:vimshell_prompt_pattern !=# ''
      \ ? g:vimshell_prompt_pattern  : exists('*vimshell#util#escape_match') ? vimshell#util#escape_match(vimshell#get_prompt()) : vimshell#escape_match(vimshell#get_prompt())
let s:prompt = substitute(s:prompt, '^\^\+', '', '')
let s:secondary_prompt = exists('*vimshell#util#escape_match') ? vimshell#util#escape_match(vimshell#get_secondary_prompt()) : vimshell#escape_match(vimshell#get_secondary_prompt())
let s:str_prompt = string('^' . s:prompt)
let s:str_secondary_prompt = string('^' . s:secondary_prompt)
let s:str_prompt_both = '^\(' . s:prompt . '\|' . s:secondary_prompt . '\)'
for s:i in s:commands
  let s:command_match[s:i] = '^'.s:prompt.'\s*\('.s:command_match[s:i].'\)\s*\($\|&\|-\||\|\s\)'
endfor
execute 'syntax match vimshellPrompt' s:str_prompt ' contained'
execute 'syntax match vimshellSecondPrompt' s:str_secondary_prompt ' contained'
syntax match vimshellSpecial '[|<>;&]' contained
execute 'syntax match vimshellCommand' string('^' . s:prompt . '\s*\\\?\f\+') ' contains=vimshellPrompt'
syntax match vimshellCommand '[|;&]\s*\f\+' contains=vimshellSpecial contained
syntax match vimshellArguments '\s-\=-[[:alnum:]-]\+' contained
highlight default link vimshellPrompt Prompt
highlight default link vimshellSecondPrompt vimshellPrompt
highlight default link vimshellArguments Arguments
highlight default link vimshellSpecial Special
highlight default link vimshellCommand Command

" number
syntax match vimshellNumber '[+-]\=\<\d\+\>\|[+-]\=\<0[xX]\x\+\>\|[+-]\=\<0[oO]\o\+\>' contained
syntax match vimshellFloat '\<[+-]\=\%(\d\+\.\d\+\|\d\+\.\|\.\d\+\)\%([eE][+-]\=\d\+\)\?\>' contained
highlight default link vimshellNumber Number
highlight default link vimshellFloat Float

" string
syntax match vimshellStringSpecial '\\\([0-9]\+\|o[0-7]\+\|x[0-9a-fA-F]\+\|[\"\\'&\\abfnrtv]\|^[A-Z^_\[\\\]]\)' contained
syntax region vimshellString start=+"+ end=+"+ contains=vimshellStringSpecial oneline contained keepend
syntax region vimshellString start=+'+ end=+'+ contains=vimshellStringSpecial oneline contained keepend
syntax region vimshellString start=+`+ end=+`+ contains=vimshellStringSpecial oneline contained keepend
highlight default link vimshellStringSpecial SpecialChar
highlight default link vimshellString String

" operator
syntax match vimshellOperator '\(\s\|^\)\(+\|-\|/\|*\|!\|&\||\|>\|<\|=\|\^\|\$\)\{1,3}\(\s\|$\)\|()\|::' contained
syntax match vimshellOperator '(\(:\|+\|-\|/\|*\|!\|&\||\|>\|<\|=\|\^\|\$\|\.\)\{1,3})' contained
highlight default link vimshellOperator Operator

" date
function! s:formatdate(time) abort
  let year = strftime('\(%Y\|%y\)', a:time)
  let month = substitute(strftime('\(%m\|%b\)', a:time), ' ', '', '')
  let day = substitute(substitute(strftime('%d', a:time), '^0', '0\\=', ''), ' ', '', '')
  return '\<\('.year.'\/'.month.'\/'.day
        \.'\|'.year.'-'.month.'-'.day
        \.'\|'.month.'\s\+'.day.'\s\+\d\d:\?\d\d\)\>'
endfunction
function! s:yesterday(time, days) abort
  return a:time - 86400 * a:days
endfunction
let s:today = localtime()
syntax match vimshellTime '\<\d\d\=:\d\d\=\>' contained
syntax match vimshellTime '\<\d\d\=:\d\d\=:\d\d\=\>' contained
syntax match vimshellDate '\<\d\+-\d\d\=-\d\+\>' contained
syntax match vimshellDate '\<\d\+/\d\d\=/\d\+\>' contained
syntax match vimshellDate '\<\d\d\?\s\+\d\d\?\s\+\d\d:\?\d\d\>' contained
syntax match vimshellDate '\<\d\d\?月\s\+\d\d\?\s\+\d\d:\?\d\d\>' contained
syntax match vimshellDate '\<\%([A-Z][a-z][a-z]\s\+\)\?[A-Z][a-z][a-z]\s\+\d\d\?\s\+\d\d:\?\d\d\%(:\d\d \d\d\d\d\%( [-+]\d\+\)\?\)\?\>' contained
command -nargs=1 LandscapeDateToday execute 'syntax match vimshellDateToday ' string(s:formatdate(s:yesterday(s:today, <args>))) ' containedin=vimshellDate contained'
LandscapeDateToday 0
LandscapeDateToday 1
delcommand LandscapeDateToday
command -nargs=1 LandscapeDateWeek execute 'syntax match vimshellDateWeek ' string(s:formatdate(s:yesterday(s:today, <args>))) ' containedin=vimshellDate contained'
LandscapeDateWeek 2
LandscapeDateWeek 3
LandscapeDateWeek 4
LandscapeDateWeek 5
LandscapeDateWeek 6
LandscapeDateWeek 7
delcommand LandscapeDateWeek
highlight default link vimshellTime Time
highlight default link vimshellDateToday DateToday
highlight default link vimshellDateWeek DateWeek
highlight default link vimshellDate Time

" file name
syntax match vimshellPath '\(^\|\s\)\@<=\(\(\.\|\~\)\?\|\.\.\?\)\(\/\([[:alnum:]_.][[:alnum:]_.-]\+\)\)\+\/\?' contained
syntax match vimshellPath '\(\(\.\|\~\)\?\/\|\.\.\?\)\(\([[:alpha:]_.][[:alnum:]_.-]*\)\/\)\+\(\([[:alnum:]_.][[:alnum:]_.-]\+\)\|.\)\?' contained
syntax match vimshellPath '[[:alnum:]]\@<!\.\?\/\([a-z][[:alnum:]_-]*\)\.\([a-z]*[[:alnum:]_-]\+\)' contained
syntax match vimshellPath '\(^\|\s\)\@<=\(\(\.\|\~\)\?\/\|\.\.\?\)\?\(\([[:alnum:]_.][[:alnum:]_.-]*\)\/\)\+\(\([[:alnum:]_.][[:alnum:]_.-]*\)\)\?' contained
syntax match vimshellPath '\(\/\|\.\.\?\)\(\([[:alpha:]_.][[:alnum:]_.-]*\)\/\)\+\(\([[:alnum:]_.][[:alnum:]_.-]\+\)\|.\)\?' contained
highlight default link vimshellPath Path
syntax match vimshellDotFiles '\%(^\|\s\)\@<=\.[[:alnum:]_.-]\+[[:blank:]\n]' contained
highlight default link vimshellDotFiles Comment
execute 'syntax match vimshellPrompt' s:str_prompt ' contained'
execute 'syntax match vimshellCommand' string('^' . s:prompt . '\s*\\\?\f\+') ' contains=vimshellPrompt'

execute 'syntax match vimshellPromptLine' string(s:str_prompt_both . '.*')
      \.' contains=vimshellPrompt,vimshellSecondPrompt,vimshellSpecial,vimshellCommand,'
      \.'vimshellString,GitHubCommand,vimshellNumber,vimshellDate,vimshellTime,'
      \.'vimshellPath,vimshellArguments,vimshellDotFiles'

let s:permission = '^[bcdlsp-][r-][w-][xsStT-][r-][w-][xsStT-][r-][w-][xsStT-][@+]\?'
syntax match vimshellDotPathLsal '\(^\|\s\)\@<=\.\f*' contained
highlight default link vimshellDotPathLsal vimshellDotFiles
syntax match vimshellPdfHtml '\(\S\| \S\)*\.\(pdf\|html\)\>\(\s\|$\)' contained
highlight default link vimshellPdfHtml PdfHtml
syntax match vimshellArchive '\(\S\| \S\)*\.\(lha\|lzh\|zip\|gz\|bz2\|cab\|rar\|7z\|tgz\|tar\)\>\(\s\|$\)' contained
highlight default link vimshellArchive Archive
syntax match vimshellImage '\(\S\| \S\)*\.\(eps\|bmp\|BMP\|png\|PNG\|gif\|GIF\|JPE\?G\|jpe\?g\|jp2\|tif\|ico\|wdp\|cur\|ani\)\>\(\s\|$\)' contained
highlight default link vimshellImage Image
syntax match vimshellTypeText '\(\S\| \S\)*\.\(txt\|cfg\|ini\)\>\(\s\|$\)' contained
highlight default link vimshellTypeText Text
syntax match vimshellTypeMultimedia '\(\S\| \S\)*\.\(
      \.avi\|asf\|wmv\|flv\|swf\|divx\|mov\|m1a\|
      \.m2[ap]\|mpe\?g\|m[12]v\|mp2v\|mp[34a]\|qt\|ra\|rm\|ram\|
      \.rmvb\|rpm\|smi\|mkv\|mid\|wav\|ogg\|wma\|au\|flac\)\>\(\s\|$\)' contained
highlight default link vimshellTypeMultimedia Multimedia
syntax match vimshellTypeSystem '\(\S\| \S\)*\.\(o\|hi\|inf\|sys\|reg\|dat\|spi\|a\|so\|lib\|dll\)\>\(\s\|$\)' contained
syntax match vimshellTypeSystem '#\S\+#\|configure[\s$]\|aclocal\.m4\|Makefile\(\s\(\.in\)\?\|$\)\|stamp-h1\|config\.\(h\.in\)\?\|config\.h\.in\~\?[\s$]\|output\.[0-9]\S\?\|requests\|traces\.[0-9]\S\?' contained
syntax match vimshellTypeSystem 'y\.tab\.c\|y\.output\|lex\.yy\.c\|y\.tab\.h' contained
highlight default link vimshellTypeSystem System
syntax match vimshellTypeExe '\S\{2,}\*\(\s\|$\)' contains=vimshellTypeExeMarker contained
highlight default link vimshellTypeExe Exe
syntax match vimshellTypeExeMarker '\*\(\s\|$\)' contained
if has('conceal')
  syntax match vimshellTypeExeMarker '\*\(\s\|$\)' contained conceal
else
  syntax match vimshellTypeExeMarker '\*\(\s\|$\)' contained
endif
highlight default link vimshellTypeExeMarker Ignore
syntax match vimshellPathLsal '\(^\|\s\)\@<=[^.]\f*/' contained
highlight default link vimshellPathLsal vimshellPath
syntax match vimshellLinkFrom '.*@ ->' contains=vimshellOperator contained
highlight default link vimshellLinkFrom String
syntax match vimshellLinkFromDest '.*@ ->.*' contains=vimshellLinkFrom,vimshellDotPathLsal,vimshellPathLsal contained
execute 'syntax match vimshellPermission' string(s:permission) 'contained'
execute 'syntax match vimshellLsalLinePart' string(s:permission
      \.'\s\+\d\+\s\+\f\+\s\+\f\+\s\+\d\+\s\+\(\(\d\d\?月\?\|[A-Z][a-z][a-z]\)\s\+\d\+\s\+\d\+\(:\d\+\)\?\|\d\d\d\d-\d\d-\d\d\s\+\d\+:\d\+\)')
      \'contains=vimshellPermission,vimshellNumber,vimshellDate,vimshellTime contained'
highlight default link vimshellPermission Constant
execute 'syntax match vimshellLsalLine' string(s:permission
      \.'\s\+\d\+\s\+\f\+\s\+\f\+\s\+\d\+\s\+\(\(\d\d\?月\?\|[A-Z][a-z][a-z]\)\s\+\d\+\s\+\d\+\(:\d\+\)\?\|\d\d\d\d-\d\d-\d\d\s\+\d\+:\d\+\).*$')
      \' contains=vimshellLsalLinePart,vimshellPdfHtml,vimshellArchive,vimshellImage,'
      \.'vimshellTypeText,vimshellTypeMultimedia,vimshellTypeSystem,vimshellTypeExe,'
      \.'vimshellPathLsal,vimshellDotPathLsal,vimshellLinkFromDest'
execute 'syntax region vimshellLs start=' string(s:command_match.ls) ' end=+\n\(' . s:prompt . '\)\@=+'
      \.' contains=vimshellPromptLine,vimshellUserPromptLine,vimshellArchive,vimshellLsalLine,vimshellDotFiles,'
      \.'vimshellTypeText,vimshellTypeMultimedia,vimshellTypeSystem,vimshellTypeExe,'
      \.'vimshellPath,vimshellPdfHtml,vimshellImage,vimshellError'
      \.' keepend'

" programming
highlight default link vimshellConditional Conditional
highlight default link vimshellCompilername Type
highlight default link vimshellCompilerdescription Constant
highlight default link vimshellStatement Statement
syntax keyword vimshellBoolean True False true false contained
highlight default link vimshellBoolean Boolean
highlight default link vimshellStatement Statement
highlight default link vimshellPyStatement Statement
highlight default link vimshellCharacter Character
highlight default link vimshellComment Comment
highlight default link vimshellType Type

" ghci
let s:hsprompt='^[a-zA-Z][a-zA-Z .0-9]\+>'
execute 'syntax match vimshellHsPrompt ' string(s:hsprompt) ' contained'
highlight default link vimshellHsPrompt vimshellPrompt
command -nargs=1 HsCommand execute 'syntax match vimshellHsCommand ' string(s:hsprompt.' *:'.<args>) ' contains=vimshellHsPrompt contained oneline'
highlight default link vimshellHsCommand vimshellCommand
HsCommand '\<\(add\|cmd\|def\|run\|set\)\>'
HsCommand '\<\(back\|edit\|help\|info\|kind\|list\|load\|main\|quit\|show\|type\)\>'
HsCommand '\<\(break\|ctags\|etags\|force\|print\|trace\|undef\|unset\)\>'
HsCommand '\<\(browse\|\|delete\|reload\|sprint\|abandon\|forward\|history\|continue\|steplocal\|stepmodule\)\>'
delcommand HsCommand
highlight default link vimshellHsCommand vimshellExe
" syntax match vimshellHsLoading '^Loading package ' contained
highlight default link vimshellHsLoading Constant
syntax match vimshellHsLoading '\(^Loading package .*\)\@<=\.\.\.[^.]*\.\.\.[^.]*\.$' contained
syntax match vimshellHsLoadingPackage '^Loading package .*' contains=vimshellHsLoading contained
highlight default link vimshellHsLoadingPackage Special
syntax keyword haskellType Bool Bounded Char Double Either Enum Eq FilePath Float contained
syntax keyword haskellType Floating Fractional Functor IO IOError Int Integer contained
syntax keyword haskellType Integral Maybe Monad Num Ord Ordering Rational Read contained
syntax keyword haskellType ReadS Real RealFloat RealFrac Show ShowS String GHC contained
syntax keyword haskellType Classes Base Tuple Types Type Data Language List Control contained
highlight default link haskellType Type
syntax keyword haskellFunction and any or head last all show print not break map contained
syntax keyword haskellFunction read null length reads even error words fail zip take contained
syntax keyword haskellFunction until lines repeat return compare filter abs acos contained
syntax keyword haskellFunction appendFile asTypeOf asin asinh atan catch ceiling contained
syntax keyword haskellFunction concat const cos cosh curry cycle decodeFloat div contained
syntax keyword haskellFunction drop either elem encodeFloat enumFrom enumFromThen contained
syntax keyword haskellFunction enumFromThenTo enumFromTo exp exponent flip floatDigits contained
syntax keyword haskellFunction floatRadix floatRange floor fmap foldl foldr fromEnum contained
syntax keyword haskellFunction fromInteger fromIntegral return map fromRational fst contained
syntax keyword haskellFunction gcd getChar getContents getLine id interact ioError contained
syntax keyword haskellFunction isDenormalized isIEEE isInfinite isNaN isNegativeZero contained
syntax keyword haskellFunction iterate lcm lex logBase lookup max maybe min mod negate contained
syntax keyword haskellFunction notElem odd otherwise pi pred product properFraction contained
syntax keyword haskellFunction putChar putStr putStrLn quot quotRem realToFrac recip contained
syntax keyword haskellFunction rem replicate reverse round scaleFloat scanl scanl1 contained
syntax keyword haskellFunction scanr scanr1 seq sequence significand signum sin snd contained
syntax keyword haskellFunction span splitAt sqrt subtract succ sum tail tan toEnum contained
syntax keyword haskellFunction toInteger toRational truncate uncurry undefined unlines contained
syntax keyword haskellFunction unwords unzip unzip3 userError writeFile foldl1 maxBound contained
syntax keyword haskellFunction maximum foldr1 mapM mapM_ sequence_ showChar showList contained
syntax keyword haskellFunction showParen showString shows showsPrec sinh tanh cosh contained
syntax keyword haskellFunction concatMap divMod atan2 atanh acosh zip3 zipWith zipWith3 contained
syntax keyword haskellFunction dropWhile takeWhile readFile readIO readList readLn contained
syntax keyword haskellFunction readParen minBound minimum readsPrec nubBy deleteBy contained
syntax keyword haskellFunction deleteFirstsBy unionBy intersectBy groupBy sortBy contained
syntax keyword haskellFunction insertBy maximumBy minimumBy genericLength genericTake contained
syntax keyword haskellFunction genericDrop genericSplitAt genericIndex genericReplicate contained
highlight default link haskellFunction Function
syntax region vimshellCompilername start=+^GHCi, version \d\+\.\d\+\.\d\++ end=+$+ contains=vimshellURL contained
syntax region vimshellCompilername start=+^The Glorious Glasgow Haskell Compilation System+ end=+$+ contained
execute 'syntax match vimshellGhcError ' string('\('.s:hsprompt.'.*\)\@<=\<let\>\(\s\+[^=]\+=\s*\S\+\)\@!') 'contained'
highlight default link vimshellGhcError Error
execute 'syntax match vimshellStatement ' string('\('.s:hsprompt.'.*\<let\>\s\+[^=]\+=\s*.\+\)\@<=\<in\>\|\('.s:hsprompt.'.*\)\@<=\<let\>\(\s\+[^=]\+=\s*\S\+\)\@=') 'contains=vimshellNumber,vimshellString contained'
execute 'syntax match vimshellGhcError ' string('\('.s:hsprompt.'.*\)\@<=\(\<if\>\(.*\<then\>.*\<else\>\)\@!\|\(\<if\>.*\)\@<=\<then\>\(.*\<else\>\)\@!\|\(\<if\>.*\)\@<!\<then\>\(.*\<else\>\)\@=\|\(\<if\>.*\<then\>.*\)\@<!\<else\>\)') 'contained'
syntax match vimshellConditional '\(\<if\>\(.*\<then\>.*\<else\>\)\@=\|\(\<if\>.*\)\@<=\<then\>\(.*\<else\>\)\@=\|\(\<if\>.*\<then\>.*\)\@<=\<else\>\)' contained
execute 'syntax match vimshellComment ' string('--.*\(Defined in\)') ' oneline contains=vimshellString,vimshellURL,haskellType contained'
execute 'syntax region vimshellGhci start=' string(s:command_match.ghc.'\|'.s:command_match.ghci.'\|'.s:hsprompt) ' end=+\n\(' . s:prompt . '\)\@=+'
      \.' contains='
      \.'vimshellPromptLine,vimshellUserPromptLine,vimshellLsalLine,'
      \.'vimshellCompilername,vimshellStatement,vimshellComment,vimshellNumber,vimshellFloat,vimshellString,vimshellBoolean,vimshellConditional,'
      \.'vimshellError,vimshellGhcError,'
      \.'vimshellHsPrompt,vimshellHsCommand,vimshellHsLoading,vimshellHsLoadingPackage,haskellType,haskellFunction,vimshellOperator,'
      \.' keepend'

" haddock, cabal
syntax match vimshellHaddockCoverage '^\s*\d\d\=% (\s\+\d\+ /\s\+\d\+) in .*$' contains=vimshellString,vimshellNumber contained
execute 'syntax region vimshellHaddock start=' string(s:command_match.haddock.'\|'.s:command_match.cabal) ' end=+\n\(' . s:prompt . '\)\@=+'
      \.' contains=vimshellPromptLine,vimshellUserPromptLine,vimshellPath,'
      \.'vimshellHaddockCoverage,vimshellError,vimshellString,vimshellNumber,haskellType'
      \.' keepend'

" github
syntax keyword GitHubCommand
      \ add               commit                   filter-branch      ls-files         pack-objects    remote-testgit     status
      \ add--interactive  commit-tree              fmt-merge-msg      ls-remote        pack-redundant  repack             stripspace
      \ am                config                   for-each-ref       ls-tree          pack-refs       replace            submodule
      \ annotate          count-objects            format-patch       mailinfo         patch-id        repo-config        svn
      \ apply             credential-cache         fsck               mailsplit        peek-remote     request-pull       symbolic-ref
      \ archimport        credential-cache--daemon fsck-objects       merge            prune           rerere             tag
      \ archive           credential-store         gc                 merge-base       prune-packed    reset              tar-tree
      \ bisect            cvsexportcommit          get-tar-commit-id  merge-file       pull            rev-list           unpack-file
      \ bisect--helper    cvsimport                grep               merge-index      push            rev-parse          unpack-objects
      \ blame             cvsserver                gui--askpass       merge-octopus    quiltimport     revert             update-index
      \ branch            daemon                   hash-object        merge-one-file   read-tree       rm                 update-ref
      \ bundle            describe                 help               merge-ours       rebase          send-email         update-server-info
      \ cat-file          diff                     http-backend       merge-recursive  receive-pack    send-pack          upload-archive
      \ check-attr        diff-files               http-fetch         merge-resolve    reflog          sh-i18n--envsubst  upload-pack
      \ check-ref-format  diff-index               http-push          merge-subtree    relink          shell              var
      \ checkout          diff-tree                imap-send          merge-tree       remote          shortlog           verify-pack
      \ checkout-index    difftool                 index-pack         mergetool        remote-ext      show               verify-tag
      \ cherry            difftool--helper         init               mktag            remote-fd       show-branch        web--browse
      \ cherry-pick       fast-export              init-db            mktree           remote-ftp      show-index         whatchanged
      \ citool            fast-import              instaweb           mv               remote-ftps     show-ref           write-tree
      \ clean             fetch                    log                name-rev         remote-http     stage
      \ clone             fetch-pack               lost-found         notes            remote-https    stash
      \ pull-request      fork                     create             browse           compare         release            issue                ci-status
      \ contained
highlight default link GitHubCommand GitCommand
syntax region vimshellDiffAdd start=/^+/ end=+$+ oneline contained keepend
syntax region vimshellDiffDelete start=/^-/ end=+$+ oneline contained keepend
syntax region vimshellDiffLine start=+^@@ -+ end=+$+ oneline contained keepend
highlight default link vimshellDiffAdd DiffAdd
highlight default link vimshellDiffDelete DiffDelete
highlight default link vimshellDiffLine DiffLine
syntax keyword vimshellDiffKeyword diff contained
highlight default link vimshellDiffKeyword vimshellCommand
syntax region vimshellDiffGit start='^diff --' end=+$+ contains=vimshellPath,vimshellDiffKeyword oneline contained
highlight default link vimshellDiffGit vimshellArguments
syntax match vimshellGitArguments '\<-\=-[[:alnum:]-]\+' contained
highlight default link vimshellGitArguments vimshellArguments
syntax region vimshellDiffDelete start=+^-\(-->\)\@!+ end=+$+ oneline contained keepend
syntax region vimshellDiffNewFile start=+^---[^>]+ end=+$+ oneline contained keepend
syntax region vimshellDiffNewFile start=+^> + end=+$+ oneline contained keepend
syntax region vimshellDiffFile start=/^+++/ end=+$+ oneline contained keepend
syntax region vimshellDiffFile start=/^< / end=+$+ oneline contained keepend
highlight default link vimshellDiffFile DiffFile
highlight default link vimshellDiffNewFile DiffNewFile
syntax match vimshellDiffLine '^\d\+\(,\d\+\)\=[cda]\d\+\>\(,\d\+\)\=$' contained
syntax match vimshellPlus '+\+' contained
highlight default link vimshellPlus vimshellDiffFile
" syntax match vimshellPlusNeg '^\(+\+-*\|-\+\)' contains=vimshellPlus contained
" highlight default link vimshellPlusNeg vimshellDiffNewFile
syntax match vimshellPlusNegOperator '([+-])' contained
highlight default link vimshellPlusNegOperator Operator
syntax match vimshellBranch '\[[^\[\] ]* \(([^ ]*) \)\?[a-z0-9]\+\]' contained
highlight default link vimshellBranch Conditional
syntax match vimshellFastFoward '|\s\+\d\+\s\+[+-]\+' contained contains=vimshellNumber,vimshellFastFowardPlus,vimshellFastFowardNeg
syntax match vimshellFastFowardPlus '+\+' contained
highlight default link vimshellFastFowardPlus DiffFile
syntax match vimshellFastFowardNeg '-\+' contained
highlight default link vimshellFastFowardNeg DiffNewFile
execute 'syntax region vimshellGitRegion start=' string(s:command_match.git.'\|'.s:command_match.hub.'\|'.s:command_match.diff.'\|^diff -\|^@@ -\d\|\%(^-.*\n\)\++') ' end="\n\(' . s:prompt . '\)\@="'
      \.' contains=vimshellPromptLine,vimshellUserPromptLine,vimshellTime,vimshellDate,'
      \.'vimshellDiffFile,vimshellDiffNewFile,vimshellDiffLine,vimshellError,vimshellNumber,'
      \.'vimshellPath,vimshellDiffGit,vimshellPath,vimshellDiffAdd,vimshellDiffDelete,'
      \.'vimshellPlusNeg,vimshellPlusNegOperator,vimshellFastFoward,GitHubCommand,vimshellGitArguments,vimshellGit,vimshellBranch'
      \.' keepend'
syntax match vimshellGit '\<git\>' contained
highlight default link vimshellGit vimshellCommand
execute 'syntax region vimshellGitRegion start=' string('^usage: git') ' end=+\n\(' . s:prompt . '\)\@=+'
      \.' contains=vimshellPromptLine,vimshellUserPromptLine,'
      \.'GitHubCommand,vimshellGitArguments,vimshellGit,vimshellError,vimshellString'
      \.' keepend'

" python
syntax match vimshellPyPrompt '^>>>' contained
highlight default link vimshellPyPrompt vimshellPrompt
syntax region vimshellCompilername start=+^Python \d\+\.\d\+\.\d\++ end=+$+ oneline contained
syntax region vimshellCompilerdescription start=+^Python \d\+.\d\+.\d\++ end=+for more information\.+ contains=vimshellCompilername contained
syntax match vimshellLambdaError '<\@<!\<lambda\>\(\(\s\+\(\h\w*\)\?\)\?:\)\@!' contained
highlight default link vimshellLambdaError vimshellError
syntax match vimshellStatement '\<lambda\>\(\(\s\+\(\h\w*\)\?\)\?:\)\@=' contained
syntax match vimshellConditional '\(\<if\>\(.*\<else\>\)\@=\|\(\<if\>.*\)\@<=\<else\>\)' contained
syntax match vimshellError '\<def\>\(\s\+\h\w*(.*).*:\)\@!' contained
syntax match vimshellStatement '\<def\>\(\s\+\h\w*\s*(.*).*:\)\@=' contained
syntax keyword vimshellPythonFunction
      \ abs divmod input open staticmethod
      \ all enumerate int ord str
      \ any eval isinstance pow sum
      \ basestring execfile issubclass print super
      \ bin file iter property tuple
      \ bool filter len range type
      \ bytearray float list raw_input unichr
      \ callable format locals reduce unicode
      \ chr frozenset long reload vars
      \ classmethod getattr map repr xrange
      \ cmp globals max reversed zip
      \ compile hasattr memoryview round __import__
      \ complex hash min set apply
      \ delattr help next setattr buffer
      \ dict hex object slice coerce
      \ dir id oct sorted intern exit help
      \ contained
highlight default link vimshellPythonFunction Function
syntax match vimshellPythonFunction '\<__[a-z]\{3,}__\>' contained
execute 'syntax region vimshellPython start=' string(s:command_match.python) ' end=+\n\(' . s:prompt . '\)\@=+'
      \.' contains=vimshellPromptLine,vimshellUserPromptLine,'
      \.'vimshellPyPrompt,vimshellCompilerdescription,vimshellError,vimshellStatement,vimshellConditional,'
      \.'vimshellComment,vimshellNumber,vimshellFloat,vimshellString,vimshellBoolean,vimshellOperator,vimshellLambdaError,vimshellPythonFunction'
      \.' keepend'

" man
syntax region vimshellUnixString start=+``\=+ end=+''\=+ contains=vimshellStringSpecial oneline contained
highlight default link vimshellUnixString String
syntax match vimshellIEEE 'IEEE Std [0-9\-.]\+' contained
highlight default link vimshellIEEE Constant
syntax match manReference "\f\+([1-9][A-Za-z]\=)" contained
syntax match manSubHeading "^\s\{3\}[A-Za-z][A-Za-z ]*[A-Za-z]$" contained
syntax match manOptionDesc "^\s*[+-][A-Za-z0-9-]\S*" contained
syntax match manLongOptionDesc "^\s*--[A-Za-z0-9-]\S*" contained
syntax match manTitle "^\f\+([0-9]\+[A-Za-z]\=).*" contained
syntax match manSectionHeading "^[A-Za-z][A-Za-z ]*[A-Za-z]$" contained
highlight default link manOptionDesc Constant
highlight default link manLongOptionDesc Constant
highlight default link manReference PreProc
highlight default link manSubHeading Function
highlight default link manTitle Title
highlight default link manSectionHeading Statement
execute 'syntax region vimshellMan start=' string(s:command_match.man.'\|^'.s:prompt.'\s*git\s\+--help\>') ' end=+\n\(' . s:prompt . '\)\@=+'
      \.' contains=vimshellPromptLine,vimshellUserPromptLine,vimshellUnixString,vimshellNumber,vimshellPath,vimshellIEEE,vimshellError,'
      \.'manOptionDesc,manLongOptionDesc,manReference,manTitle,manSectionHeading,manSubHeading'
      \.' keepend'

" make
execute 'syntax region vimshellMake start=' string(s:command_match.make.'\|^'.s:prompt.'\s*git\s\+--help\>') ' end=+\n\(' . s:prompt . '\)\@=+'
      \.' contains=vimshellPromptLine,vimshellUserPromptLine,vimshellString,vimshellUnixString,vimshellNumber,vimshellPath,vimshellError'
      \.' keepend'

syntax region vimshellError start=+!!!+ end=+!!!+ contains=vimshellErrorHidden oneline

let b:current_syntax = 'vimshell'

let &cpo = s:save_cpo
unlet s:save_cpo
