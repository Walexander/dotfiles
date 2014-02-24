filetype off                  " required!
set nocompatible              " be iMproved
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'sjl/gundo.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nanotech/jellybeans.vim'

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
:highlight ExtraWhitespace ctermbg=red guibg=red
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
:match ExtraWhitespace /\s\+$\| \+\ze\t/
:match ExtraWhitespace /[^\t]\zs\t\+/
:match ExtraWhitespace /^\t*\zs \+/
:match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/


set guioptions+=LlRrb
set guioptions-=LlRrb

set background=dark

map <C-G> :!grunt <CR>

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
