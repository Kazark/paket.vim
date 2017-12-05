if exists("b:current_syntax")
    finish
endif

syntax case match

syntax match paketDepsKeyword /^\s*framework/
syntax match paketDepsKeyword /redirects/
syntax match paketDepsKeyword /^\s*source/
syntax match paketDepsKeyword /^\s*nuget/
syntax match paketDepsKeyword /^\s*http/
syntax match paketDepsKeyword /^\s*github/
syntax match paketDepsKeyword /^\s*group/

syntax match paketDepsSymbol />=/
syntax match paketDepsSymbol /\~>/
syntax match paketDepsSymbol /:\([^\/]\)\@=/

syntax match paketDepsVersion /\d\(\.\d\)\+/

syntax match paketDepsOption /\<on\>/
syntax match paketDepsOption /\<force\>/
syntax match paketDepsOption /\<net20\>/
syntax match paketDepsOption /\<net35\>/
syntax match paketDepsOption /\<net40\>/
syntax match paketDepsOption /\<net45\>/
syntax match paketDepsOption /\<net451\>/
syntax match paketDepsOption /\<net452\>/
syntax match paketDepsOption /\<net46\>/
syntax match paketDepsOption /\<net461\>/
syntax match paketDepsOption /\<net462\>/
syntax match paketDepsOption /\<auto-detect\>/

" Source: https://gist.github.com/tobym/584909
syntax match paketDepsUrl /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\?\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/

highlight link paketDepsKeyword Keyword
highlight link paketDepsSymbol Operator
highlight link paketDepsVersion Float
highlight link paketDepsOption Boolean
highlight link paketDepsUrl String

let b:current_syntax = "paketdeps"
