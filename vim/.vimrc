filetype off                  " required!
set nocompatible              " be iMproved
set tabstop=4
set shiftwidth=4
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
Bundle 'pangloss/vim-javascript'
Bundle 'nanotech/jellybeans.vim'
Bundle 'mklabs/grunt.vim'
Bundle 'michalliu/sourcebeautify.vim'
Bundle 'michalliu/jsruntime.vim'
Bundle 'michalliu/jsoncodecs.vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'geekjuice/vim-spec'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite'

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

set ai
set hlsearch

set ignorecase
set smartcase

set relativenumber
set number

syn region myFold start="{" end="}" transparent fold
syn sync fromstart
syntax on

set nofoldenable
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
map <leader><space> :noh <cr>
map <leader>m :Make dev<cr>
map <leader>M :Make build<cr>
map <leader>t :Make test <cr>
map <leader>c :cclose <cr>

map <leader>r :TernRename <cr>
map <leader>d :TernDef<cr>
map <leader>D :TernDefPreview<cr>
map <leader>H :TernDoc<cr>
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

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
let g:solarized_termcolors=16
colorscheme jellybeans

" au BufRead* try | execute "compiler ".&filetype | catch /./ | endtry
set completeopt-=preview

nnoremap C-T n :tabnew <CR>
nnoremap C-W N :vnew <CR>

" Simplify help navigation
"nnoremap <buffer> <CR> <C-]>
"noremap <buffer> <BS> <C-T>
"nnoremap <buffer> o /'\l\{2,\}'<CR>
"nnoremap <buffer> O ?'\l\{2,\}'<CR>
"nnoremap <buffer> s /\|\zs\S\+\ze\|<CR>
"nnoremap <buffer> S ?\|\zs\S\+\ze\|<CR>

