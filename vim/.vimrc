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
Bundle 'junegunn/vim-emoji'
Bundle 'MarcWeber/vim-addon-errorformats'
Plugin 'mnpk/vim-jira-complete'
Bundle 'joonty/vdebug.git'
Plugin 'michalliu/jsoncodecs.vim'
Plugin 'cosminadrianpopescu/vim-sql-workbench'
Plugin 'KevinGoodsell/vim-color-check'
Plugin 'Tagbar'
Plugin 'dbext.vim'
Plugin 'unite.vim'
Plugin 'surround.vim'
Plugin 'elzr/vim-json'
Plugin 'noah/vim256-color'
Plugin 'xterm-color-table.vim'
Plugin 'itchyny/calendar.vim'
Plugin 'xmledit'
Plugin 'localvimrc'
Plugin 'editorconfig-vim'

let g:calendar_google_calendar = 1

filetype plugin indent on     " required!
set hidden
set ai
set hlsearch

set wildmenu
"set wildmode=list:longest
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
map <leader>ct :runtime syntax/colortest.vim<cr>
map <leader>lb :blast<cr>


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
nnoremap - <c-w>-
map + <c-w>+
map <C-G> :!grunt dev <CR>
map <leader><space> :noh <cr>
map <silent> <Leader>H :vertical resize +5<cr>
map <silent> <Leader>L :vertical resize -5<cr>
map <silent> <Leader>J :resize +5<cr>
map <silent> <Leader>K :resize -5<cr>

botright cwindow
nnoremap <Leader>cd :lcd %:p:h<cr>
nnoremap <Leader>co :cw<cr>
nnoremap <Leader>cc :cclose<cr>
nnoremap <LocalLeader>n :cnext<Cr>
nnoremap <LocalLeader>o :Copen<Cr>
nnoremap <LocalLeader>m :Make<Cr>

map <Leader>gR :TernRename <cr>
map <leader>gr :TernRef<cr>
map <leader>gd :TernDef<cr>
map <leader>gD :TernDefPreview<cr>
map <leader>gh :TernDoc<cr>

map <leader>nt :NERDTreeToggle<cr>
inoremap <expr> <C-K> HUDG_GetDigraph()

vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()
vmap  <expr>  ++       VMATH_YankAndAnalyse() 

let tern_show_argument_hints='no'
let tern_show_signature_in_pum=0

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

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|dist|build|compile|comp'

nnoremap <expr> G (v:count ? 'Gzv' : 'G')
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

let g:solarized_underline=0
let g:solarized_diffmode="high"
set background=dark
colorscheme solarized


let g:jiracomplete_url = 'http://beanstockmedia.atlassian.net/'
let g:jiracomplete_username = 'walexander'


"autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
"autocmd InsertLeave * let &l:foldmethod=w:last_fdm

set foldlevelstart=2

" dbext
let g:dbext_default_profile_psql_prod_helix_dwh_tableau = 'type=DBI:driver=Pg:user=tableau:conn_parms=host=localhost;port=5439;dbname=dwhdb:driver_parms='
let g:dbext_default_profile_psql_qa_dwh_tableau = 'type=DBI:driver=Pg:user=tableau:conn_parms=host=beanstock-qa.cx1nsbwqjxwv.us-east-1.redshift.amazonaws.com;port=5439;dbname=dwhdb:driver_parms='
let g:dbext_default_profile_psql_qa_dwh_dataload = 'type=DBI:driver=Pg:user=data_load:conn_parms=host=beanstock-qa.cx1nsbwqjxwv.us-east-1.redshift.amazonaws.com;port=5439;dbname=dwhdb:driver_parms='
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

let g:vdebug_options = {}
let g:vdebug_options['watch_window_style'] = 'compact'
let g:vdebug_keymap  = {}
let g:vdebug_keymap['run'] = '<Leader>r'
let g:vdebug_keymap['break_on_open'] = 0 
let g:vdebug_keymap['run_to_cursor'] = "<Leader>h"
let g:vdebug_keymap['step_over'] = "<Leader>o"
let g:vdebug_keymap['step_into'] = "<Leader>i"
let g:vdebug_keymap['step_out'] = "<Leader>t"
let g:vdebug_keymap['set_breakpoint'] = "<Leader>b"


let g:localvimrc_ask=0

" insert file / path info
" --
" just the file name
inoremap \fn <C-R>=expand("%:t:r")<CR>
" file name.ext
inoremap \ff <C-R>=expand("%:t")<CR>
" directory of file
inoremap \fd <C-R>=expand("%:p:h")<CR>
" relative directory path
inoremap \fd <C-R>=expand("%:h")<CR>

