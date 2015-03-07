let current_compiler="grunt"
if exists(":CompilerSet") != 2
	command -nargs=* CompilerSet setLocal <args>
endif

CompilerSet makeprg=grunt\ dev\ test:%:t\ --file=%

"CompilerSet efm=%E%.%#Error:\ %m
"CompilerSet efm+=%C\ \ at%.%#<%f:%l:%c>
"CompilerSet efm+=%C%.%#

"
CompilerSet errorformat=>>\ Failed:`%m`\:\ %f:%l
"CompilerSet errorformat+=%-G>>\ %.%#\ path\ cleaned.
"CompilerSet errorformat+=%-G>>\ %.%#\ assertions\ passed%.%#
"CompilerSet errorformat+=%+G\>\>%.%#
"CompilerSet errorformat+=%-G%.%#

"CompilerSet errorformat=>>\ Failed:'%m'\:\ %f:%l
"CompilerSet errorformat=%E✗\ %m,Died\ on

