filetype off                  " required!
set nocompatible              " be iMproved
set tabstop=4
set shiftwidth=4
set softtabstop=4
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-dispatch'
Bundle 'airblade/vim-gitgutter'
Bundle 'sjl/gundo.vim'
Bundle 'jelera/vim-javascript-syntax'
"Bundle 'pangloss/vim-javascript'
Bundle 'nanotech/jellybeans.vim'
Bundle 'mklabs/grunt.vim'
Bundle 'michalliu/sourcebeautify.vim'
Bundle 'michalliu/jsruntime.vim'
Bundle 'michalliu/jsoncodecs.vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'w0ng/vim-hybrid'
Bundle 'Valloric/YouCompleteMe'
Bundle 'geekjuice/vim-spec'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite'
Bundle 'krisajenkins/vim-pipe'
Bundle 'geekjuice/vim-mocha'
Bundle 'mileszs/ack.vim'
Bundle 'kshenoy/vim-signature'
Bundle 'Raimondi/delimitMate'
Bundle 'leafgarland/typescript-vim'
Bundle 'mkitt/tabline.vim'

au BufRead,BufNewFile *.ts        setlocal filetype=typescript
set rtp+=~/.vim/typescript-tools/

" Custom syntastic settings:
function! s:find_jshintrc(dir)
    let l:found = globpath(a:dir, '.jshintrc')
    if filereadable(l:found)
        return l:found
    endif

    let l:parent = fnamemodify(a:dir, ':h')
    if l:parent != a:dir
        return s:find_jshintrc(l:parent)
    endif

    return "~/.jshintrc"
endfunction

function! UpdateJsHintConf()
    let l:dir = expand('%:p:h')
    let l:jshintrc = s:find_jshintrc(l:dir)
endfunction

au BufEnter * call UpdateJsHintConf()
filetype plugin indent on     " required!
set smartindent

set ai
set hlsearch

set ignorecase
set smartcase

set relativenumber
set number

syn sync fromstart
syntax on

set t_ut=
set efm=%.%#Message:\ %m
set laststatus=2

filetype plugin on
set ofu=syntaxcomplete#Complete

highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
match ExtraWhitespace /\s\+$\| \+\ze\t/
match ExtraWhitespace /[^\t]\zs\t\+/
match ExtraWhitespace /^\t*\zs \+/
match ExtraWhitespace /\s\+\%#\@<!$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
set colorcolumn=95

set guioptions+=LlRrb
set guioptions-=LlRrb

set background=dark
set splitright
nnoremap <c-w>\| :vnew <cr>
map <C-G> :!grunt dev <CR>
let mapleader=","
let maplocalleader=",,"
map <leader><space> :noh <cr>
map <leader>c :cclose <cr>
map gp :tabprevious<cr>

map <leader>R :TernRename <cr>
map <leader>r :TernRef<cr>
map <leader>d :TernDef<cr>
map <leader>D :TernDefPreview<cr>
map <leader>H :TernDoc<cr>
let tern_show_argument_hints='on_hold'
let tern_show_signature_in_pum=1

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call ! RunAllSpecs()<CR>

nnoremap <LocalLeader>n :cnext<Cr>
nnoremap <LocalLeader>o :Copen<Cr>
nnoremap <LocalLeader>m :Make<Cr>


let g:syntastic_javascript_jshint_args = '--config /Users/walexander/.jshintrc'
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_check_on_open = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5


python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set background=dark
let g:zenburn_old_Visual = 1
let g:zenburn_high_Contrast = 1
let g:zenburn_alternate_Visual = 1
colorscheme zenburn

" au BufRead* try | execute "compiler ".&filetype | catch /./ | endtry
set completeopt-=preview

nnoremap C-T n :tabnew <CR>
nnoremap C-W N :vnew <CR>
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
    let expansionString = repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf
au FileType javascript call JavaScriptFold()
let delimitMate_expand_cr=2
let delimiteMate_expand_sp=2
let delimitMate_jump_expansion=1

set undofile
set udir=~/.vim/undo/
