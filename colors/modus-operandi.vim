" Name: modus-operandi
" Author: Mathew Robinson <mathew@chasinglogic.io>
" License: MIT

hi clear

if exists("syntax on")
    syntax reset
endif

set t_Co=256
let g:colors_name = "modus-operandi"


" Define reusable colorvariables.
let s:bg_main="#ffffff"
let s:fg="#000000"
let s:fg2="#141414"
let s:fg3="#292929"
let s:fg4="#3d3d3d"
let s:bg_main2="#ebebeb"
let s:bg_main3="#d6d6d6"
let s:bg_main4="#c2c2c2"
let s:keyword="#5317ac"
let s:builtin="#8f0075"
let s:const= "#0000bb"
let s:comment="#505050"
let s:func="#721045"
let s:str="#223fbf"
let s:type="#8f0075"
let s:var="#005589"
let s:warning="#703700"
let s:warning2="#a80000"

exe 'hi Normal guifg='s:fg' guibg='s:bg_main 
exe 'hi Cursor guifg='s:bg_main' guibg='s:fg 
exe 'hi CursorLine  guibg='s:bg_main2 
exe 'hi CursorColumn  guibg='s:bg_main2 
exe 'hi ColorColumn  guibg='s:bg_main2 
exe 'hi LineNr guifg='s:fg2' guibg='s:bg_main2 
exe 'hi VertSplit guifg='s:fg3' guibg='s:bg_main3 
exe 'hi MatchParen guifg='s:warning2'  gui=underline'
exe 'hi StatusLine guifg='s:fg2' guibg='s:bg_main3' gui=bold'
exe 'hi Pmenu guifg='s:fg' guibg='s:bg_main2
exe 'hi PmenuSel  guibg='s:bg_main3 
exe 'hi IncSearch guifg='s:bg_main' guibg='s:keyword 
exe 'hi Search   gui=underline'
exe 'hi Directory guifg='s:const  
exe 'hi Folded guifg='s:fg4' guibg='s:bg_main 

exe 'hi Boolean guifg='s:const  
exe 'hi Character guifg='s:const  
exe 'hi Comment guifg='s:comment  
exe 'hi Conditional guifg='s:keyword  
exe 'hi Constant guifg='s:const  
exe 'hi Define guifg='s:keyword  
exe 'hi DiffAdd guifg=#000000 guibg=#bef6dc gui=bold'
exe 'hi DiffDelete guifg='s:bg_main2  
exe 'hi DiffChange  guibg=#5b76ef guifg=#ffffff'
exe 'hi DiffText guifg=#ffffff guibg=#ff0000 gui=bold'
exe 'hi ErrorMsg guifg='s:warning' guibg='s:bg_main2' gui=bold'
exe 'hi WarningMsg guifg='s:fg' guibg='s:warning2 
exe 'hi Float guifg='s:const  
exe 'hi Function guifg='s:func  
exe 'hi Identifier guifg='s:type'  gui=italic'
exe 'hi Keyword guifg='s:keyword'  gui=bold'
exe 'hi Label guifg='s:var
exe 'hi NonText guifg='s:bg_main4' guibg='s:bg_main2 
exe 'hi Number guifg='s:const  
exe 'hi Operater guifg='s:keyword  
exe 'hi PreProc guifg='s:keyword  
exe 'hi Special guifg='s:fg  
exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg_main2 
exe 'hi Statement guifg='s:keyword  
exe 'hi StorageClass guifg='s:type'  gui=italic'
exe 'hi String guifg='s:str  
exe 'hi Tag guifg='s:keyword  
exe 'hi Title guifg='s:fg'  gui=bold'
exe 'hi Todo guifg='s:fg2'  gui=inverse,bold'
exe 'hi Type guifg='s:type 
exe 'hi Underlined   gui=underline'

" Ruby Highlighting
exe 'hi rubyAttribute guifg='s:builtin
exe 'hi rubyLocalVariableOrMethod guifg='s:var
exe 'hi rubyGlobalVariable guifg='s:var' gui=italic'
exe 'hi rubyInstanceVariable guifg='s:var
exe 'hi rubyKeyword guifg='s:keyword
exe 'hi rubyKeywordAsMethod guifg='s:keyword' gui=bold'
exe 'hi rubyClassDeclaration guifg='s:keyword' gui=bold'
exe 'hi rubyClass guifg='s:keyword' gui=bold'
exe 'hi rubyNumber guifg='s:const

" Python Highlighting
exe 'hi pythonBuiltinFunc guifg='s:builtin

" Go Highlighting
exe 'hi goBuiltins guifg='s:builtin

" Javascript Highlighting
exe 'hi jsBuiltins guifg='s:builtin
exe 'hi jsFunction guifg='s:keyword' gui=bold'
exe 'hi jsGlobalObjects guifg='s:type
exe 'hi jsAssignmentExps guifg='s:var

" Html Highlighting
exe 'hi htmlLink guifg='s:var' gui=underline'
exe 'hi htmlStatement guifg='s:keyword
exe 'hi htmlSpecialTagName guifg='s:keyword

" Markdown Highlighting
exe 'hi mkdCode guifg='s:builtin
