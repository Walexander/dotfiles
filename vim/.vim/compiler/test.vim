let current_compiler="test"

CompilerSet makeprg=cat\ ~/err.log\ \\\|\ gsed\ 's:http\\\://localhost\\\:8998/::'
let efm=''
let &efm =  '>> Failed:%m\.%.%#at\ %f:%l' . ','
"let &efm =  '%Z%.%#' . ','
"let &efm =  '%Z\ \ \ \ \ \ at\ %f:%n:\ %.%#' . ','
let &efm .= '%-G%.%#'
