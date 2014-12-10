let current_compiler="grunt"
if exists(":CompilerSet") != 2
	command -nargs=* CompilerSet setLocal <args>
endif

CompilerSet makeprg=grunt\ dev\ test:%
"CompilerSet makeprg=grunt\ dev\ karma:test

CompilerSet errorformat=>>\ Failed:'%m'\:\ %f:%l
"CompilerSet errorformat=%E✗\ %m,Died\ on

