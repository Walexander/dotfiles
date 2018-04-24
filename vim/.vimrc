filetype off                  " required!
set nocompatible              " be iMproved
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
set t_Co=16

Bundle 'geekjuice/vim-mocha'
Bundle 'gmarik/vundle'
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
Bundle 'mileszs/ack.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'bufexplorer.zip'
Bundle 'michalliu/jsruntime.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'sjl/gundo.vim'
Bundle 'jpalardy/vim-slime'
Bundle 'felixge/vim-nodejs-errorformat'
Bundle 'joonty/vdebug.git'
Plugin 'michalliu/jsoncodecs.vim'
Plugin 'dbext.vim'
Plugin 'surround.vim'
Plugin 'elzr/vim-json'
Plugin 'localvimrc'
Plugin 'editorconfig-vim'
Plugin 'repeat.vim'
Plugin 'bling/vim-bufferline'
Plugin 'ryanoasis/vim-devicons'

filetype plugin indent on     " required!

set hidden
set ai
set hlsearch

set wildmenu
set guifont=Source\ Code\ Pro\ Medium:h13

set showbreak=
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

set diffopt+=vertical

syn sync fromstart
syntax on

set t_ut=

filetype plugin on
set ofu=syntaxcomplete#Complete

highlight clear SignColumn

set splitright
nnoremap <c-w>\| :vnew <cr>
nnoremap <c-w>% :new <cr>
nnoremap - <c-w>-
map + <c-w>+
map <C-G> :!grunt dev <CR>
map <leader><space> :noh <cr>
map <silent> <Leader>H :vertical resize +5<cr>
map <silent> <Leader>L :vertical resize -5<cr>
map <silent> <Leader>J :resize +5<cr>
map <silent> <Leader>K :resize -5<cr>

nnoremap <Leader>m :Make<cr>
botright cwindow
nnoremap <Leader>cd :lcd %:p:h<cr>
nnoremap <Leader>co :copen<cr>
nnoremap <Leader>cc :cclose<cr>
map <Leader>gR :TernRename <cr>
map <leader>gr :TernRef<cr>
map <leader>gd :TernDef<cr>
map <leader>gD :TernDefPreview<cr>
map <leader>gh :TernDoc<cr>

map <leader>nt :NERDTreeToggle<cr>

"let tern_show_argument_hints='on_hold'
"let tern_show_signature_in_pum=0

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
let delimitMate_expand_sp=2
let delimitMate_jump_expansion=1

set undofile
set udir=~/.vim/undo/

let g:gundo_width=30
let g:gundo_preview_bottom=1
let g:gundo_auto_preview=0
map <leader>gu :GundoToggle<CR>
let g:undootree_SplitWidth=20

let g:solarized_underline=0
let g:solarized_diffmode="high"
set background=dark
colorscheme solarized
"autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
"autocmd InsertLeave * let &l:foldmethod=w:last_fdm
" dbext
let g:dbext_default_profile_psql_prod_helix_dwh_tableau = 'type=DBI:driver=Pg:user=tableau:conn_parms=host=localhost;port=5439;dbname=dwhdb:driver_parms='
let g:dbext_default_profile_helixdwh_prod = 'type=DBI:driver=Pg:user=tableau:conn_parms=host=beanstock-qa.cx1nsbwqjxwv.us-east-1.redshift.amazonaws.com;port=5439;dbname=dwhdb:driver_parms='
let g:dbext_default_profile_helixdwh_green = 'type=DBI:driver=Pg:user=data_load:conn_parms=host=localhost;port=5441;dbname=dwhdb:driver_parms='
let g:dbext_default_profile_helixdwh_develop = 'type=DBI:driver=Pg:user=data_load:conn_parms=host=localhost;port=54320;dbname=dwhdb:driver_parms='
let g:dbext_default_prompt_for_parameters=0


" In .vimrc
silent! if emoji#available()
  let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
  let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
  let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
  let g:gitgutter_sign_modified_removed = emoji#for('collision')
endif

let g:slime_target="tmux"
set noswapfile

let g:vdebug_keymap  = {}
let g:vdebug_keymap['run'] = '<Leader>r'
let g:vdebug_keymap['run_to_cursor'] = "<Leader>h"
let g:vdebug_keymap['step_over'] = "<Leader>o"
let g:vdebug_keymap['step_into'] = "<Leader>i"
let g:vdebug_keymap['step_out'] = "<Leader>t"
let g:vdebug_keymap['set_breakpoint'] = "<Leader>b"


let g:localvimrc_ask=0
autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
autocmd InsertLeave * let &l:foldmethod=w:last_fdm

map <LocalLeader>t :call RunCurrentSpecFile() <CR>
map <LocalLeader>s :call RunNearestSpec() <CR>
map <LocalLeader>l :call RunLastSpec() <CR>
map <LocalLeader>a :call RunAllSpecs() <CR>
let g:mocha_js_command = "Make {spec}"
