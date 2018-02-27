let s:base_gopath = $GOPATH

func! s:SetGOPATH()
        let $GOPATH = s:base_gopath
        let $GOPATH = system('gopath')
endfunc

augroup AutoGoPath
au!
au BufEnter *.go call s:SetGOPATH()
augroup END

