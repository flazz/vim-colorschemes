" cyclecolor.vim
" cycle through available colorschemes
"
" Maintainer:   Marvin Renich <mrvn-vim@renich.org>
" Version:  1.0
" Last Change:  2006 Feb 03

" Copyright 2005, 2006 Marvin Renich
"
" Redistribution and use, with or without modification, are permitted
" provided that the following conditions are met:
"
"   1.  Redistributions in any form must retain the above copyright
"       notice, this list of conditions and the following disclaimer.
"   2.  The name of the author may not be used to endorse or promote
"       products derived from this software without specific prior
"       written permission.
"
" THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
" IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
" WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
" DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT,
" INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
" (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
" SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
" HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
" STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
" IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
" POSSIBILITY OF SUCH DAMAGE.

" This script is inspired by a one-liner by Tim Chase on the vim@vim.org
" mailing list in Message-ID: <42CAEC9F.7050001@thechases.com>.
"
" This script uses globpath to get all available colorschemes, not just
" the ones in the $VIMRUNTIME/colors directory.  It also bases the next
" colorscheme on the full path of the current one, not the g:colors_name
""lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light
" variable, which makes a difference if a script with the same
" colors_name exists in more than one place on the runtime path.  It
" also helps when the script does not set the colors_name correctly
" (and there are some that do not).
"
" If the colors_name variable has changed since this script was last
" run, it tries to find the first script with that base name and
" continues the cycle from there.  If it cannot find the script, it
" starts over from the beginning of the cycle.
"
" As the :colorscheme command does more than just :source the
" appropriate script, I have stuck to using :colorscheme rather than
" :source.  This has one drawback:  if there is more than one script
" with the same name on the runtime path, only the first one will be
" used, though this script will keep track of which colorscheme should
" be next.
"
" I also avoided using vim 7 lists so this script can be used with
" version 6.
"
" TODO:  Allow cycling both directions.
"        Allow selecting the scheme from a list (like csExplorer.vim)

let s:schemes = "\n".globpath(&rtp, "colors/*.vim")."\n"
let s:currentfile = ""
let s:currentname = ""
function! CycleColor()
	" Uncomment the next line to allow for changes in the list of colorschemes.
	"let s:schemes = "\n".globpath(&rtp, "colors/*.vim")."\n"

	if exists("g:colors_name") && g:colors_name != s:currentname
		" The user must have selected a colorscheme manually; try
		" to find it and choose the next one after it
		let nextfile = substitute(s:schemes, '.*\n\([^\x0A]*[/\\]'.g:colors_name.'\.vim\)\n.*', '\1', '')
		if nextfile == s:schemes
			let s:currentfile = ""
		else
			let s:currentfile = nextfile
		endif
	endif

	" Find the current file name, and select the next one.
	" No substitution will take place if the current file is not found or is the last in the list.
	let nextfile = substitute(s:schemes, '.*\n'.s:currentfile.'\n\([^\x0A]\+\)\n.*', '\1', '')
	" If the above worked, there will be no control chars in nextfile, so this will not substitute;
	" otherwise, this will choose the first file in the list.
	let nextfile = substitute(nextfile, '\n\+\([^\x0A]\+\)\n.*', '\1', '')

	if nextfile != s:schemes
		let clrschm = substitute(nextfile, '^.*[/\\]\([^/\\]\+\)\.vim$', '\1', '')
		" In case the color scheme does not set this variable, empty it so we can tell.
		unlet! g:colors_name
		exec 'colorscheme '.clrschm
		redraw
		if exists("g:colors_name")
			let s:currentname = g:colors_name
		else
			let s:currentname = ""
		endif
		echo s:currentname.' ('.nextfile.')'
	endif

	let s:currentfile = nextfile

endfunction

nnoremap <f4> :call CycleColor()<cr>

" vi:set ai ts=4 sw=4 tw=0:
