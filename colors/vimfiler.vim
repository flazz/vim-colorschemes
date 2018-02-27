if exists('g:landscape_syntax_vimfiler') && g:landscape_syntax_vimfiler == 0
  finish
endif

if version < 700
  syntax clear
endif

let s:save_cpo = &cpo
set cpo&vim

syntax match vimfilerTypeArchive    /.*\ze\[A\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeDirectory  /.*\ze\[D\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeExecute    /.*\ze\[X\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeImage      /.*\ze\[I\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeLink       /.*\ze\[L\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeMultimedia /.*\ze\[M\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeSystem     /.*\ze\[S\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeText       /.*\ze\[T\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerPdfHtml        /\c.*\.\%(pdf\|html\) / contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
if has_key(g:, 'landscape_vimfiler_important')
  execute 'syntax match vimfilerImportant' string(g:landscape_vimfiler_important) 'contained containedin=vimfilerNonMark,vimfilerNormalFile,vimfilerClosedFile,vimfilerOpenedFile'
endif

highlight default link vimfilerColumn__TimeToday DateOld
highlight default link vimfilerColumn__TimeWeek DateToday
highlight default link vimfilerColumn__TimeNormal DateWeek
highlight default link vimfilerColumn__SizeLine Constant
highlight default link vimfilerClosedFile Path
highlight default link vimfilerCurrentDirectory Path
highlight default link vimfilerImportant SpecialChar
highlight default link vimfilerMarkedFile Marked
highlight default link vimfilerNonMark Icon
highlight default link vimfilerOpenedFile Path
highlight default link vimfilerPdfHtml PdfHtml
highlight default link vimfilerTypeArchive Archive
highlight default link vimfilerTypeDirectory Path
highlight default link vimfilerTypeExecute Exe
highlight default link vimfilerTypeImage Image
highlight default link vimfilerTypeLink Link
highlight default link vimfilerTypeMultimedia Multimedia
highlight default link vimfilerTypeSystem System
highlight default link vimfilerTypeText Text

let &cpo = s:save_cpo
unlet s:save_cpo
