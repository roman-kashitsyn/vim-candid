if exists("g:current_compiler")
  finish
endif
let g:current_compiler = 'didc'

CompilerSet makeprg=didc\ check\ %
CompilerSet errorformat=\
            \%-G,
            \%E\ %#%*[^\ ]\ %f:%l:%c,
            \%C\ %#%*[^\ ]\ =\ %m,%Z,
            \%C\ %.%#,
            \%EError:\ %m,%CExpected\ %.%#,%Z,
