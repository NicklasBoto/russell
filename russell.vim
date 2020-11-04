" Vim syntax file
" Language: russell
" Maintainer: Nicklas Botö

if exists("b:current_syntax")
        finish
endif

syn match rInt "\d\+"
hi def link rInt Number

syn match rFloat "\d\+\.\d\+"
hi def link rFloat Float

syn match rTypeClass "[A-Z]\+[a-z]*" 
hi def link rTypeClass Type

syn keyword rKeyword pattern case class instance for let in if then else return upto
hi def link rKeyword Statement

syn match rIType "\I\+\s*\(:\)\@="
hi def link rIType Identifier

syn match rIdent "\I\+\s*\(=\)\@="
hi def link rIdent Identifier

syn match rType "[A-Z]\+[a-z]*"
hi def link rType Constant

syn match rMacro "\I\+!\s*\((\)\@="
hi def link rMacro Special

syn match rFCall "\I\+\((\)\@="
hi def link rFCall Function

syn keyword rCommentSpex contained TODO FIXME XXX HACK COOL
hi def link rCommentSpex Todo

"syn region rTypeAnn start=":\(:\|=\)\@!" skip="\\$" end="$" keepend contains=rType
"syn region rTypeDef start="::=" skip="\\$" end="$" keepend contains=rType

syn region rComment start="--" skip="\\$" end="$" keepend contains=rCommentSpex
syn region rComment start="{-" end="-}" contains=rCommentSpex
hi def link rComment Comment

syn match rEscape contained "\\."
hi def link rEscape Special

syn region rString start="\"" end="\"" contains=rEscape
hi def link rString String
