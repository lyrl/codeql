syn keyword qlKeyword       from where select predicate in as order by asc desc module
syn keyword qlAnnotation    abstract cached external final library noopt private
syn keyword qlLogic         not and or implies exists forall forex any none
syn keyword qlConditional   if then else
syn keyword qlType          int float string boolean date
syn keyword qlImport        import nextgroup=qlQualified skipwhite
syn keyword qlTypeMod       class extends instanceof nextgroup=qlType skipwhite
syn keyword qlPredicate     rank

syn match  qlQualified     "\v([a-zA-Z_]+\.)*[a-zA-Z_]+"
syn match  qlComment       "//.*$" contains=@Spell
syn match  qlComparison    "[!=<>]"
syn match  qlVar           "\v[a-zA-Z0-9_#]+"
syn match  qlType          "\v[@A-Z][a-zA-Z0-9_]+"
syn match  qlPredicate     "\v[a-zA-Z0-9_#@]+\ze\("

syn region qlComment      start="/\*" end="\*/" contains=@Spell
syn region qlString       start=/\v"/ skip=/\v\\./ end=/\v"/

hi def link qlComment     Comment
hi def link qlString      String
hi def link qlImport      Include
hi def link qlComparison  Operator
hi def link qlAnnotation  PreProc
hi def link qlTypeMod     Keyword
hi def link qlLogic       Keyword
hi def link qlPredicate   Function
hi def link qlConditional Conditional
hi def link qlType        Type
if !exists("g:qlVarNoHighlight")
  hi def link qlVar         Identifier
endif
hi def link qlKeyword     Keyword
hi def link qlQualified   Normal

