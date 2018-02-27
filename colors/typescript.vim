syn keyword angularComponent selector template styles
syn keyword angularRxjsSubscription subscribe unsubscribe
syn keyword mongoOperator \$set \$and \$or \$nin \$ne \$exists \$fields \$inc
syn keyword mongoCursorOperator sort limit count skip 
syn keyword mongoPrototype update insert find findOne remove
syn keyword angularType Subscription FormGroup MeteorObservable
syn keyword angularRxjsComponent Subscription Observable Subject
syn keyword angularForm Validators FormBuilder valid reset
syn keyword meteorKeyword Meteor check 
syn keyword meteorPrototype publish methods call isServer isPublic userId
syn keyword javascriptKeyword console log new require
syn keyword typescriptKeyword Set 
syn match typescriptFunc /\s\=\h\+\s*(\{1}\s\=)\+\s\=/
syn match typescriptVar /\h\+\s\+/
syn match typescriptJSON /\s\{2,}[a-zA-Z_]\+[?]\=\s\=:/
syn match typescriptInterface /[<]\{1}[A-Za-z]\+[^\s]\+[^\[\]]*[>]\{1}/

hi def link typescriptInterface Label
hi def link typescriptJSON jsonKeyword
hi def link typescriptVar Type
hi def link typescriptFunc Function
hi def link angularComponent jsonKeyword
hi def link angularRxjsSubscription Keyword
hi def link mongoOperator Operator
hi def link mongoPrototype Keyword
hi def link angularType Type
hi def link meteorPrototype shDeref
hi def link mongoCursorOperator shDeref
hi def link angularRxjsComponent class   
hi def link meteorKeyword Function
hi def link angularForm Label
hi def link javascriptKeyword Type
hi def link typescriptKeyword Function
