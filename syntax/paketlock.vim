if exists("b:current_syntax")
    finish
endif

syntax case match

syntax match paketLockKeyword /^  remote/
syntax match paketLockKeyword /^  specs/
syntax match paketLockKeyword /^NUGET/
syntax match paketLockKeyword /^GITHUB/

syntax match paketLockSymbol />=/
syntax match paketLockSymbol /(/
syntax match paketLockSymbol /)/
syntax match paketLockSymbol /:\_s/

syntax match paketLockVersion /\d\(\.\d\)\+/

highlight link paketLockKeyword Keyword
highlight link paketLockSymbol Operator
highlight link paketLockVersion Float

let b:current_syntax = "paketlock"
