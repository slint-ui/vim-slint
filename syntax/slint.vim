if v:version < 600
  syntax clear
elseif exists('b:current_syntax')
  finish
endif

syntax keyword slintConstant black
syntax keyword slintConstant blue
syntax keyword slintConstant ease
syntax keyword slintConstant ease_in
syntax keyword slintConstant ease_in_out
syntax keyword slintConstant ease_out
syntax keyword slintConstant end
syntax keyword slintConstant green
syntax keyword slintConstant red
syntax keyword slintConstant red
syntax keyword slintConstant start
syntax keyword slintConstant yellow

syntax keyword slintConstant true
syntax keyword slintConstant false

syntax keyword slintConstant parent
syntax keyword slintConstant root
syntax keyword slintConstant this

syntax keyword slintKeyword animate
syntax keyword slintKeyword callback
syntax keyword slintKeyword export
syntax keyword slintKeyword for
syntax keyword slintKeyword from
syntax keyword slintKeyword if
syntax keyword slintKeyword import
syntax keyword slintKeyword property
syntax keyword slintKeyword return
syntax keyword slintKeyword states
syntax keyword slintKeyword struct
syntax keyword slintKeyword transitions

syntax keyword slintType angle
syntax keyword slintType bool
syntax keyword slintType brush
syntax keyword slintType color
syntax keyword slintType duration
syntax keyword slintType easing
syntax keyword slintType float
syntax keyword slintType image
syntax keyword slintType int
syntax keyword slintType length
syntax keyword slintType percent
syntax keyword slintType physical-length
syntax keyword slintType string

syntax keyword slintOperator + - * / += -= *= /= != => <=> = !

syntax match slintValueInteger "[-+]\=\d\+"
syntax match slintValueNumber "[-+]\=\d\+\(\.\d*\)\="
syntax match slintValueLength "[-+]\=\d\+\(\.\d*\)\=\(mm\|cm\|in\|pt\|px\)\>"
syntax match slintValueLength "[-+]\=\d\+\(\.\d*\)\=%"
syntax match slintValueAngle "[-+]\=\d\+\(\.\d*\)\=\(deg\|turn\|rad\)\>"
syntax match slintValueTime "+\=\d\+\(\.\d*\)\=\(ms\|s\)\>"

syntax match slintProperty "[a-zA-Z_][a-zA-Z_\-0-9]* *:"
syntax match slintStorage "[a-zA-Z_][a-zA-Z_\-0-9]* *:="

syntax region slintComment start=+//+ end=/$/
syntax region slintComment start=+/\*+  end=+\*/+

syntax region slintStringQQ start=+"+ skip=+\\\\\|\\"+ end=+"+
syntax region slintStringQ start=+'+ skip=+\\\\\|\\'+ end=+'+

hi def link slintComment Comment
hi def link slintConstant Constant
hi def link slintKeyword Keyword
hi def link slintStringQ String
hi def link slintStringQQ String
hi def link slintType Type
hi def link slintValueAngle Number
hi def link slintValueInteger Number
hi def link slintValueLength Number
hi def link slintValueNumber Number
hi def link slintValueTime Number
hi def link slintProperty StorageClass
hi def link slintStorage StorageClass
hi def link slintOperator Operator

let b:current_syntax = "slint"
