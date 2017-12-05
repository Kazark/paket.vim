if exists("b:current_syntax")
    finish
endif

syntax case match

syntax match paketLocalKeyword / source /
syntax match paketLocalKeyword /^nuget/
syntax match paketLocalKeyword / git /

syntax match paketLocalSymbol /->/

syntax match paketLocalComment /^\/\/.*/
syntax match paketLocalComment /^#.*/

highlight link paketLocalKeyword Keyword
highlight link paketLocalSymbol Operator
highlight link paketLocalComment Comment

let b:current_syntax = "paketlocal"
