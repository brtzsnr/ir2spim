" incomplete, but useful
" put this file in ~/.vim/syntax

syntax case ignore

syntax keyword aromaInstruction mov add sub mul and orr eor mvn cmp
syntax keyword aromaInstruction b beq bne bge blt bgt ble bl
syntax keyword aromaInstruction ldr str ldrb strb
syntax keyword aromaInstruction fcpyd faddd fdubd fmuld fdivd fcmpd fditod ftosid fldd fstd

syntax keyword aromaRegister SP LR
syntax keyword aromaDirective DB DW DD DS

syntax match aromaInteger /\d\+/
syntax match aromaInteger /\$\x\+/
syntax match aromaChar /'.'/
syntax region aromaString start=/"/ skip=/""/ end=/"/

syntax match aromaLabel /[[:alpha:]_][[:alpha:][:digit:]_]*/
syntax match aromaRegister /V\?\(R\|D\)\d\+/
syntax match aromaComment /;.*/
syntax match aromaOperator /^.\(code\|data\)/

highlight link aromaInstruction Special
highlight link aromaInteger Number
highlight link aromaChar Character
highlight link aromaString String
highlight link aromaComment Comment
" highlight link aromaRegister Identifier
highlight link aromaDirective Type
highlight link aromaLabel Label
highlight link aromaOperator Operator
