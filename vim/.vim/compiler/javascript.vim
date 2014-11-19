let current_compiler="grunt"
if exists(":CompilerSet") != 2
	command -nargs=* CompilerSet setLocal <args>
endif

CompilerSet makeprg=grunt
