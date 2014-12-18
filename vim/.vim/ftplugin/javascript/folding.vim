fu! CustomFoldText()
    "get first non-blank line
    let fs = v:foldstart
    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile
    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif
    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines "
    let foldLevelStr = repeat("+--", v:foldlevel)
    let lineCount = line("$")
    let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "

	let foldLine = foldSizeStr . foldPercentage . foldLevelStr
	let lineLen = line[0: w - len(foldLine) - 5]
    let expansionString = repeat(".", w - strwidth(lineLen . foldLine))
	return lineLen . expansionString . foldLine
endf
setlocal foldenable
setlocal foldmethod=syntax
set foldtext=CustomFoldText()
set fillchars="fold: " 

hi Folded term=NONE cterm=NONE gui=NONE 
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1


