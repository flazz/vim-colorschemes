" Source me!
colorscheme wwdc16
silent tabnew
syn match   WWDC16S1 /"Hello, Vim!"\|packages\|available/
syn match   WWDC16S2 /"November 2, 1991"\|learnAbout\|jobs/
syn match   WWDC16S3 /let\|+/
syn keyword WWDC16S4 print
syn keyword WWDC16S5 channels gameChanging 1000
syn keyword WWDC16S6 timers handsOn everywhere
syn keyword WWDC16S7 100
hi! link WWDC16S1 Include
hi! link WWDC16S2 String
hi! link WWDC16S3 PreProc
hi! link WWDC16S4 Identifier
hi! link WWDC16S5 Statement
hi! link WWDC16S6 Constant
hi! link WWDC16S7 Type

insert
print("Hello, Vim!")

learnAbout(channels, jobs, timers, packages)

let sessions = 100+
let features = 1000+
let tabs = handsOn
let documentation = available
let date = "November 2, 1991"
let location = everywhere
let Vim8 = gameChanging
.

