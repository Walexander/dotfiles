filetype off                  " required!
set nocompatible              " be iMproved
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
set t_Co=16
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-dispatch'
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'mklabs/grunt.vim'
Bundle 'michalliu/sourcebeautify.vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'krisajenkins/vim-pipe'
Bundle 'mileszs/ack.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'bufexplorer.zip'
Bundle 'michalliu/jsruntime.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'sjl/gundo.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'jpalardy/vim-slime'

filetype plugin indent on     " required!
set hidden
set ai
set hlsearch

set showbreak=\ \
set nosmartindent

set noshowmode
set laststatus=2

set completeopt-=preview

set ignorecase
set smartcase

set relativenumber
set number

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

let mapleader=","
let maplocalleader=",,"
set listchars=tab:▸\ ,eol:¬,nbsp:%,trail: ,trail:·

map <leader>ev :new ~/.vimrc<cr>
map <leader>sv :source ~/.vimrc<cr>
map <leader>l :set list!<CR>

syn sync fromstart
syntax on

set t_ut=

filetype plugin on
set ofu=syntaxcomplete#Complete

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
highlight clear SignColumn
match OverLength /\%81v.\+/

set splitright
nnoremap <c-w>\| :vnew <cr>
map <C-G> :!grunt dev <CR>
map <leader><space> :noh <cr>
map <silent> <Leader>H :vertical resize +5<cr>
map <silent> <Leader>L :vertical resize -5<cr>
map <silent> <Leader>J :resize +5<cr>
map <silent> <Leader>K :resize -5<cr>

nnoremap <Leader>cd :lcd %:p:h<cr>
nnoremap <LocalLeader>c :cclose<cr>
nnoremap <LocalLeader>n :cnext<Cr>
nnoremap <LocalLeader>o :Copen<Cr>
nnoremap <LocalLeader>m :Make<Cr>

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

let delimitMate_expand_cr=2
let delimiteMate_expand_sp=2
let delimitMate_jump_expansion=1

set undofile
set udir=~/.vim/undo/
map <F4> :UndotreeToggle <CR>
let g:undootree_SplitWidth=20

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

nnoremap <expr> G (v:count ? 'Gzv' : 'G')
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

let g:solarized_termcolors=16
let g:solarized_visibility='normal'
let g:solarized_contrast="normal"
let g:solarized_bold=1
let g:solarized_underline=0
let g:solarized_italics=0
set background=dark
colorscheme solarized
