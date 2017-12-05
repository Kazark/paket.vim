if exists("b:current_syntax")
    finish
endif

syntax case match

syntax match paketRefsKeyword /\<group\>/
syntax match paketRefsKeyword /\<copy_local\>/
syntax match paketRefsKeyword /\<import_targets\>/
syntax match paketRefsKeyword /\<content\>/
syntax match paketRefsKeyword /\<redirects\>/
syntax match paketRefsKeyword /\<framework\>/

syntax match paketRefsSymbol /,/
syntax match paketRefsSymbol />=/
syntax match paketRefsSymbol /:/

syntax match paketRefsValue /\<on\>/
syntax match paketRefsValue /\<force\>/
syntax match paketRefsValue /\<off\>/
syntax match paketRefsValue /\<true\>/
syntax match paketRefsValue /\<false\>/
syntax match paketRefsValue /\<none\>/
syntax match paketRefsValue /\<once\>/
syntax match paketRefsValue /\<net20\>/
syntax match paketRefsValue /\<net35\>/
syntax match paketRefsValue /\<net40\>/
syntax match paketRefsValue /\<net45\>/
syntax match paketRefsValue /\<net451\>/

highlight link paketRefsKeyword Keyword
highlight link paketRefsSymbol Operator
highlight link paketRefsValue Boolean

let b:current_syntax = "paketrefs"
