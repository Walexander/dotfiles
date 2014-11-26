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
Bundle 'mkitt/tabline.vim'
Bundle 'bufexplorer.zip'
filetype plugin indent on     " required!
set smartindent

set ai
set hlsearch

set showbreak=\ \ 
set breakindent

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

set background=dark
set splitright
nnoremap <c-w>\| :vnew <cr>
map <C-G> :!grunt dev <CR>
let mapleader=","
let maplocalleader=",,"
map <leader><space> :noh <cr>
nnoremap <LocalLeader>c :cclose <cr>
nnoremap <LocalLeader>n :cnext<Cr>
nnoremap <LocalLeader>o :Copen<Cr>
nnoremap <LocalLeader>m :Make<Cr>


map gp :tabprevious<cr>
map gn :tabnext<cr>

map <leader>R :TernRename <cr>
map <leader>r :TernRef<cr>
map <leader>d :TernDef<cr>
map <leader>D :TernDefPreview<cr>
map <leader>h :TernDoc<cr>
let tern_show_argument_hints='on_hold'
let tern_show_signature_in_pum=1

let g:syntastic_javascript_jshint_args = '--config /Users/walexander/.jshintrc'
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_check_on_open = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5


python import sys; sys.path.append("/usr/local/lib/python2.7/site-packages")
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set background=dark
set noshowmode
set laststatus=2
let g:zenburn_old_Visual = 1
let g:zenburn_high_Contrast = 1
let g:zenburn_alternate_Visual = 1
colorscheme zenburn

set completeopt-=preview

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
