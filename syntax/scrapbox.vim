" text
syn match sbBold "\v\[\* .+\]"
syn match sbBold "\v\[\[.+\]\]"
hi def link sbBold Title

" TODO
"   [/ 斜体]
"   [- 打ち消し]
"   > 引用
"   table:名前
"     aa bb
"     cc dd

syn match sbHash "\v#[^ ]+"
hi def link sbHash Underlined

syn match sbLink "\v\[[^*\[].+\]"
hi def link sbLink Identifier

" command
syn match sbDeref '\v^[$%].+'
hi def link sbDeref Define

" inline code
syn region sbInlineCode start=+`+ skip=+\\\\\|\\`+ end=+`+
hi def link sbInlineCode Define

" code block
syn region sbCodeBlock start="\v^code:.+$" end="^$"
hi def link sbCodeBlock Define

let b:current_syntax = 'scrapbox'
