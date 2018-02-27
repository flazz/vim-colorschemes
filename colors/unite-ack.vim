" vim: ts=8 sw=8 noet:
" unite-ack.vim
" Noel Cower
"
" Sets Unite's grep source to ack, if available.

let s:ack_command = 'ack'

if executable('ag')
	let s:ack_command = 'ag'
elseif !executable(s:ack_command)
	finish
end

let g:unite_source_grep_command = s:ack_command
let g:unite_source_grep_default_opts = '--line-numbers --smart-case --nocolor --nogroup --hidden --ignore .hg --ignore .git --ignore .svn'

" ag-specific argument to skip the contents of .gitignore and whatnot
if s:ack_command == 'ag'
	let g:unite_source_grep_default_opts = g:unite_source_grep_default_opts.'--skip-vcs-ignores'
endif

let g:unite_source_grep_recursive_opt = ''
