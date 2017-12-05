if exists("b:current_syntax")
    finish
endif

syntax case match

syntax match paketTmplKeyword /^type/
syntax match paketTmplKeyword /^id/
syntax match paketTmplKeyword /^version/
syntax match paketTmplKeyword /^description/
syntax match paketTmplKeyword /^releaseNotes/
syntax match paketTmplKeyword /^files/
syntax match paketTmplKeyword /^authors/
syntax match paketTmplKeyword /^owners/
syntax match paketTmplKeyword /^title/
syntax match paketTmplKeyword /^language/
syntax match paketTmplKeyword /^summary/
syntax match paketTmplKeyword /^copyright/
syntax match paketTmplKeyword /^requireLicenseAcceptance/
syntax match paketTmplKeyword /^include-referenced-projects/
syntax match paketTmplKeyword /^references/
syntax match paketTmplKeyword /^frameworkAssemblies/
syntax match paketTmplKeyword /^dependencies/
syntax match paketTmplKeyword /^excludeddependencies/
syntax match paketTmplKeyword /^excludedgroups/
syntax match paketTmplKeyword /^tags/
syntax match paketTmplKeyword /^developmentDependency/
syntax match paketTmplKeyword /^include-pdbs/
syntax match paketTmplKeyword /^iconUrl/
syntax match paketTmplKeyword /^projectUrl/
syntax match paketTmplKeyword /^licenseUrl/

syntax match paketTmplVersion /\d\(\.\d\)\+/
syntax match paketTmplVersion /CURRENTVERSION/

syntax match paketTmplValue /file$/
syntax match paketTmplValue /project$/
syntax match paketTmplValue /true$/
syntax match paketTmplValue /false$/

syntax match paketTmplOp /==>/
syntax match paketTmplOp />=/
syntax match paketTmplOp /\~>/

" Source: https://gist.github.com/tobym/584909
syntax match paketTmplUrl /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/

highlight link paketTmplKeyword Keyword
highlight link paketTmplUrl String
highlight link paketTmplVersion Float
highlight link paketTmplValue Constant
highlight link paketTmplOp Operator

let b:current_syntax = "pakettmpl"
