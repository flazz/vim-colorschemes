" syntax clear jsCommentTodo
" syntax keyword jsCommentTodo contained TODO FIXME XXX TBD NOTE

" syntax clear jsOperator
" syntax keyword jsOperator delete instanceof typeof void in of skipwhite skipempty nextgroup=@jsExpression

syntax keyword javaScriptNodeKeyword require
syntax keyword javaScriptAsyncAwaitKeyword async await

" syntax clear jsGlobalNodeObjects
" syntax keyword jsGlobalNodeObjects module exports global process __dirname __filename
" syntax match jsNodeRequire /\<require\>/ containedin=jsFuncCall

" unlet b:current_syntax
" syntax include @CSS syntax/css.vim
" syntax region sheetify matchgroup=Type start="css`" end="`" contains=@CSS

" unlet b:current_syntax
" syntax include @HTML syntax/html.vim
" syntax region bel matchgroup=Type start="html`" end="`" contains=@HTML
