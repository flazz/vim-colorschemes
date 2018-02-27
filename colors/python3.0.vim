" Vim syntax file
" Language:	Python
" Maintainer:	Dmitry Vasiliev <dima@hlabs.spb.ru>
" URL:		http://www.hlabs.spb.ru/vim/python3.0.vim
" Last Change:	2010-11-14
" Filenames:	*.py
" Version:	3.0.6
"
" Based on python.vim (from Vim 6.1 distribution)
" by Neil Schemenauer <nas@python.ca>
"
" Thanks:
"
"    Jeroen Ruigrok van der Werven
"        for the idea to highlight erroneous operators
"    Pedro Algarvio
"        for the patch to enable spell checking only for the right spots
"        (strings and comments)
"    John Eikenberry
"        for the patch fixing small typo
"    Caleb Adamantine
"        for the patch fixing highlighting for decorators
"    Andrea Riciputi
"        for the patch with new configuration options
"    Anton Butanaev
"        for the patch fixing bytes literals highlighting
"        for the patch fixing str.format syntax highlighting

"
" Options:
"
"    For set option do: let OPTION_NAME = 1
"    For clear option do: let OPTION_NAME = 0
"
" Option names:
"
"    For highlight builtin functions:
"       python_highlight_builtins
"
"    For highlight builtin objects:
"       python_highlight_builtin_objs
"
"    For highlight builtin funtions:
"       python_highlight_builtin_funcs
"
"    For highlight standard exceptions:
"       python_highlight_exceptions
"
"    For highlight string formatting:
"       python_highlight_string_formatting
"
"    For highlight str.format syntax:
"       python_highlight_string_format
"
"    For highlight string.Template syntax:
"       python_highlight_string_templates
"
"    For highlight indentation errors:
"       python_highlight_indent_errors
"
"    For highlight trailing spaces:
"       python_highlight_space_errors
"
"    For highlight doc-tests:
"       python_highlight_doctests
"
"    If you want all Python highlightings above:
"       python_highlight_all
"    (This option not override previously set options)
"
"    For fast machines:
"       python_slow_sync

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if exists("python_highlight_all") && python_highlight_all != 0
  " Not override previously set options
  if !exists("python_highlight_builtins")
    if !exists("python_highlight_builtin_objs")
      let python_highlight_builtin_objs = 1
    endif
    if !exists("python_highlight_builtin_funcs")
      let python_highlight_builtin_funcs = 1
    endif
  endif
  if !exists("python_highlight_exceptions")
    let python_highlight_exceptions = 1
  endif
  if !exists("python_highlight_string_formatting")
    let python_highlight_string_formatting = 1
  endif
  if !exists("python_highlight_string_format")
    let python_highlight_string_format = 1
  endif
  if !exists("python_highlight_string_templates")
    let python_highlight_string_templates = 1
  endif
  if !exists("python_highlight_indent_errors")
    let python_highlight_indent_errors = 1
  endif
  if !exists("python_highlight_space_errors")
    let python_highlight_space_errors = 1
  endif
  if !exists("python_highlight_doctests")
    let python_highlight_doctests = 1
  endif
endif

" Keywords
syn keyword pythonStatement	break continue del
syn keyword pythonStatement	exec return as
syn keyword pythonStatement	pass raise
syn keyword pythonStatement	global assert
syn keyword pythonStatement	lambda yield
syn keyword pythonStatement	with nonlocal
syn keyword pythonStatement	False None True
syn keyword pythonStatement	def class nextgroup=pythonFunction skipwhite
syn match   pythonFunction	"\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained
syn keyword pythonRepeat	for while
syn keyword pythonConditional	if elif else
syn keyword pythonPreCondit	import from
syn keyword pythonException	try except finally
syn keyword pythonOperator	and in is not or

" Decorators (new in Python 2.4)
syn match   pythonDecorator	"@" display nextgroup=pythonDottedName skipwhite
syn match   pythonDottedName "[a-zA-Z_][a-zA-Z0-9_]*\(\.[a-zA-Z_][a-zA-Z0-9_]*\)*" display contained
syn match   pythonDot        "\." display containedin=pythonDottedName

" Comments
syn match   pythonComment	"#.*$" display contains=pythonTodo,@Spell
syn match   pythonRun		"\%^#!.*$"
syn match   pythonCoding	"\%^.*\%(\n.*\)\?#.*coding[:=]\s*[0-9A-Za-z-_.]\+.*$"
syn keyword pythonTodo		TODO FIXME XXX contained

" Errors
syn match pythonError		"\<\d\+\D\+\>" display
syn match pythonError		"[$?]" display
syn match pythonError		"[&|]\{2,}" display
syn match pythonError		"[=]\{3,}" display

" TODO: Mixing spaces and tabs also may be used for pretty formatting multiline
" statements. For now I don't know how to work around this.
if exists("python_highlight_indent_errors") && python_highlight_indent_errors != 0
  syn match pythonIndentError	"^\s*\%( \t\|\t \)\s*\S"me=e-1 display
endif

" Trailing space errors
if exists("python_highlight_space_errors") && python_highlight_space_errors != 0
  syn match pythonSpaceError	"\s\+$" display
endif

" Strings
syn region pythonString		start=+'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonEscape,pythonEscapeError,@Spell
syn region pythonString		start=+"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonEscape,pythonEscapeError,@Spell
syn region pythonString		start=+"""+ end=+"""+ keepend contains=pythonEscape,pythonEscapeError,pythonDocTest2,pythonSpaceError,@Spell
syn region pythonString		start=+'''+ end=+'''+ keepend contains=pythonEscape,pythonEscapeError,pythonDocTest,pythonSpaceError,@Spell

syn match  pythonEscape		    +\\[abfnrtv'"\\]+ display contained
syn match  pythonEscape		    "\\\o\o\=\o\=" display contained
syn match  pythonEscapeError	"\\\o\{,2}[89]" display contained
syn match  pythonEscape		    "\\x\x\{2}" display contained
syn match  pythonEscapeError	"\\x\x\=\X" display contained
syn match  pythonEscape		    "\\$"
syn match  pythonEscape         "\\u\x\{4}" display contained
syn match  pythonEscapeError	"\\u\x\{,3}\X" display contained
syn match  pythonEscape	        "\\U\x\{8}" display contained
syn match  pythonEscapeError	"\\U\x\{,7}\X" display contained
syn match  pythonEscape	        "\\N{[A-Z ]\+}" display contained
syn match  pythonEscapeError	"\\N{[^A-Z ]\+}" display contained

" Raw strings
syn region pythonRawString	start=+[bB]\=[rR]'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonRawEscape,@Spell
syn region pythonRawString	start=+[bB]\=[rR]"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonRawEscape,@Spell
syn region pythonRawString	start=+[bB]\=[rR]"""+ end=+"""+ keepend contains=pythonDocTest2,pythonSpaceError,@Spell
syn region pythonRawString	start=+[bB]\=[rR]'''+ end=+'''+ keepend contains=pythonDocTest,pythonSpaceError,@Spell

syn match pythonRawEscape	+\\['"]+ display transparent contained

" Bytes
syn region pythonBytes		start=+[bB]'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonBytesError,pythonBytesContent,@Spell
syn region pythonBytes		start=+[bB]"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonBytesError,pythonBytesContent,@Spell
syn region pythonBytes		start=+[bB]"""+ end=+"""+ keepend contains=pythonBytesError,pythonBytesContent,pythonDocTest2,pythonSpaceError,@Spell
syn region pythonBytes		start=+[bB]'''+ end=+'''+ keepend contains=pythonBytesError,pythonBytesContent,pythonDocTest,pythonSpaceError,@Spell

syn match pythonBytesError    ".\+" display contained
syn match pythonBytesContent    "[\u0000-\u00ff]\+" display contained contains=pythonBytesEscape,pythonBytesEscapeError

syn match pythonBytesEscape	    +\\[abfnrtv'"\\]+ display contained
syn match pythonBytesEscape	    "\\\o\o\=\o\=" display contained
syn match pythonBytesEscapeError	"\\\o\{,2}[89]" display contained
syn match pythonBytesEscape	    "\\x\x\{2}" display contained
syn match pythonBytesEscapeError	"\\x\x\=\X" display contained
syn match pythonBytesEscape	    "\\$"

if exists("python_highlight_string_formatting") && python_highlight_string_formatting != 0
  " String formatting
  syn match pythonStrFormatting	"%\%(([^)]\+)\)\=[-#0 +]*\d*\%(\.\d\+\)\=[hlL]\=[diouxXeEfFgGcrs%]" contained containedin=pythonString,pythonRawString
  syn match pythonStrFormatting	"%[-#0 +]*\%(\*\|\d\+\)\=\%(\.\%(\*\|\d\+\)\)\=[hlL]\=[diouxXeEfFgGcrs%]" contained containedin=pythonString,pythonRawString
endif

if exists("python_highlight_string_format") && python_highlight_string_format != 0
  " str.format syntax
  syn match pythonStrFormat "{{\|}}" contained containedin=pythonString,pythonRawString
  syn match pythonStrFormat	"{\%(\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\|\d\+\)\=\%(\.\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\|\[\%(\d\+\|[^!:\}]\+\)\]\)*\%(![rsa]\)\=\%(:\%({\%(\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\|\d\+\)}\|\%([^}]\=[<>=^]\)\=[ +-]\=#\=0\=\d*,\=\%(\.\d\+\)\=[bcdeEfFgGnosxX%]\=\)\=\)\=}" contained containedin=pythonString,pythonRawString
endif

if exists("python_highlight_string_templates") && python_highlight_string_templates != 0
  " String templates
  syn match pythonStrTemplate	"\$\$" contained containedin=pythonString,pythonRawString
  syn match pythonStrTemplate	"\${[a-zA-Z_][a-zA-Z0-9_]*}" contained containedin=pythonString,pythonRawString
  syn match pythonStrTemplate	"\$[a-zA-Z_][a-zA-Z0-9_]*" contained containedin=pythonString,pythonRawString
endif

if exists("python_highlight_doctests") && python_highlight_doctests != 0
  " DocTests
  syn region pythonDocTest	start="^\s*>>>" end=+'''+he=s-1 end="^\s*$" contained
  syn region pythonDocTest2	start="^\s*>>>" end=+"""+he=s-1 end="^\s*$" contained
endif

" Numbers (ints, longs, floats, complex)
syn match   pythonHexError	"\<0[xX]\x*[g-zG-Z]\x*\>" display

syn match   pythonHexNumber	"\<0[xX]\x\+\>" display
syn match   pythonOctNumber "\<0[oO]\o\+\>" display
syn match   pythonBinNumber "\<0[bB][01]\+\>" display

syn match   pythonNumberError	"\<\d\+\D\>" display
syn match   pythonNumberError	"\<0\d\+\>" display
syn match   pythonNumber	"\<\d\>" display
syn match   pythonNumber	"\<[1-9]\d\+\>" display
syn match   pythonNumber	"\<\d\+[jJ]\>" display

syn match   pythonFloat		"\.\d\+\%([eE][+-]\=\d\+\)\=[jJ]\=\>" display
syn match   pythonFloat		"\<\d\+[eE][+-]\=\d\+[jJ]\=\>" display
syn match   pythonFloat		"\<\d\+\.\d*\%([eE][+-]\=\d\+\)\=[jJ]\=" display

syn match   pythonOctError	"\<0[oO]\=\o*[8-9]\d*\>" display
syn match   pythonBinError	"\<0[bB][01]*[2-9]\d*\>" display

if exists("python_highlight_builtin_objs") && python_highlight_builtin_objs != 0
  " Builtin objects and types
  syn keyword pythonBuiltinObj	Ellipsis NotImplemented
  syn keyword pythonBuiltinObj	__debug__ __doc__ __file__ __name__ __package__
endif

if exists("python_highlight_builtin_funcs") && python_highlight_builtin_funcs != 0
  " Builtin functions
  syn keyword pythonBuiltinFunc	__import__ abs all any ascii
  syn keyword pythonBuiltinFunc	bin bool bytearray bytes
  syn keyword pythonBuiltinFunc	chr classmethod cmp compile complex
  syn keyword pythonBuiltinFunc	delattr dict dir divmod enumerate eval
  syn keyword pythonBuiltinFunc	exec filter float format frozenset getattr
  syn keyword pythonBuiltinFunc	globals hasattr hash hex id
  syn keyword pythonBuiltinFunc	input int isinstance
  syn keyword pythonBuiltinFunc	issubclass iter len list locals map max
  syn keyword pythonBuiltinFunc	memoryview min next object oct open ord
  syn keyword pythonBuiltinFunc	pow print property range
  syn keyword pythonBuiltinFunc	repr reversed round set setattr
  syn keyword pythonBuiltinFunc	slice sorted staticmethod str sum super tuple
  syn keyword pythonBuiltinFunc	type vars zip
endif

if exists("python_highlight_exceptions") && python_highlight_exceptions != 0
  " Builtin exceptions and warnings
  syn keyword pythonExClass	BaseException
  syn keyword pythonExClass	Exception ArithmeticError
  syn keyword pythonExClass	LookupError EnvironmentError

  syn keyword pythonExClass	AssertionError AttributeError BufferError EOFError
  syn keyword pythonExClass	FloatingPointError GeneratorExit IOError
  syn keyword pythonExClass	ImportError IndexError KeyError
  syn keyword pythonExClass	KeyboardInterrupt MemoryError NameError
  syn keyword pythonExClass	NotImplementedError OSError OverflowError
  syn keyword pythonExClass	ReferenceError RuntimeError StopIteration
  syn keyword pythonExClass	SyntaxError IndentationError TabError
  syn keyword pythonExClass	SystemError SystemExit TypeError
  syn keyword pythonExClass	UnboundLocalError UnicodeError
  syn keyword pythonExClass	UnicodeEncodeError UnicodeDecodeError
  syn keyword pythonExClass	UnicodeTranslateError ValueError VMSError
  syn keyword pythonExClass	WindowsError ZeroDivisionError

  syn keyword pythonExClass	Warning UserWarning BytesWarning DeprecationWarning
  syn keyword pythonExClass	PendingDepricationWarning SyntaxWarning
  syn keyword pythonExClass	RuntimeWarning FutureWarning
  syn keyword pythonExClass	ImportWarning UnicodeWarning
endif

if exists("python_slow_sync") && python_slow_sync != 0
  syn sync minlines=2000
else
  " This is fast but code inside triple quoted strings screws it up. It
  " is impossible to fix because the only way to know if you are inside a
  " triple quoted string is to start from the beginning of the file.
  syn sync match pythonSync grouphere NONE "):$"
  syn sync maxlines=200
endif

if version >= 508 || !exists("did_python_syn_inits")
  if version <= 508
    let did_python_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink pythonStatement	Statement
  HiLink pythonPreCondit	Statement
  HiLink pythonFunction		Function
  HiLink pythonConditional	Conditional
  HiLink pythonRepeat		Repeat
  HiLink pythonException	Exception
  HiLink pythonOperator		Operator

  HiLink pythonDecorator	Define
  HiLink pythonDottedName	Function
  HiLink pythonDot          Normal

  HiLink pythonComment		Comment
  HiLink pythonCoding		Special
  HiLink pythonRun		Special
  HiLink pythonTodo		Todo

  HiLink pythonError		Error
  HiLink pythonIndentError	Error
  HiLink pythonSpaceError	Error

  HiLink pythonString		String
  HiLink pythonRawString	String
  HiLink pythonEscape			Special
  HiLink pythonEscapeError		Error

  HiLink pythonBytes		    String
  HiLink pythonBytesContent	    String
  HiLink pythonBytesError	    Error
  HiLink pythonBytesEscape		Special
  HiLink pythonBytesEscapeError	Error

  HiLink pythonStrFormatting	Special
  HiLink pythonStrFormat    	Special
  HiLink pythonStrTemplate	    Special

  HiLink pythonDocTest		Special
  HiLink pythonDocTest2		Special

  HiLink pythonNumber		Number
  HiLink pythonHexNumber	Number
  HiLink pythonOctNumber	Number
  HiLink pythonBinNumber	Number
  HiLink pythonFloat		Float
  HiLink pythonNumberError  Error
  HiLink pythonOctError	    Error
  HiLink pythonHexError		Error
  HiLink pythonBinError		Error

  HiLink pythonBuiltinObj	Structure
  HiLink pythonBuiltinFunc	Function

  HiLink pythonExClass	Structure

  delcommand HiLink
endif

let b:current_syntax = "python"
