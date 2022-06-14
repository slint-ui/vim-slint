if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

setlocal commentstring=//\ %s
setlocal autoindent smartindent
" There's no special words needed to be indented
setlocal cinwords=
