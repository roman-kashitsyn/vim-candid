if exists("b:current_syntax")
    finish
endif

syntax match candidId "[A-Za-z|_][A-Za-z_0-9]*"
syntax match candidNumber "[0-9][_0-9]*"
syntax match candidNumber "0x[0-9a-fA-F][_0-9a-fA-F]*"
syntax match candidComment "//.*$" contains=candidTodo,@Spell
syntax region candidComment start=+/\*+ end=+\*/+ contains=candidTodo,@Spell

syntax keyword candidTodo TODO FIXME contained
syntax keyword candidKeyword record variant service func oneway query type import
syntax keyword candidType principal opt vec bool text blob reserved empty null nat nat8 nat16 nat32 nat64 int int8 int16 int32 int64 float32 float64

syntax region candidString start=+"+ end=+"+

highlight link candidTodo Todo
highlight link candidComment Comment
highlight link candidKeyword Keyword
highlight link candidType Type
highlight link candidNumber Number
highlight link candidString String

let b:current_syntax = "candid"
