call plug#begin('~/.vim/plugged')
Plug 'Shougo/unite.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-repeat'
Plug 'jelera/vim-javascript-syntax'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'neomake/neomake'
Plug 'ternjs/tern_for_vim'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/ListToggle'
Plug 'mileszs/ack.vim'
Plug 'wesQ3/vim-windowswap'
"Plug 'fholgado/minibufexpl.vim'
Plug 'evidens/vim-twig'
Plug 'maksimr/vim-jsbeautify'
Plug 'benmills/vimux'
Plug 'janko-m/vim-test'
Plug 'scrooloose/nerdtree'
Plug 'sgur/vim-editorconfig'
Plug 'jpalardy/vim-slime'
Plug 'tpope/vim-sleuth'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'davidhalter/jedi-vim'

call plug#end()

let  g:python3_host_prog='python3'
let g:deoplete#enable_at_startup = 1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
let g:phpcd_php_cli_executable = '/usr/local/bin/php'

filetype plugin indent on     " required!
set hidden
set hlsearch
set wildmenu
set guifont=Source\ Code\ Pro\ Medium:h13
set showbreak=
set nosmartindent
set foldlevelstart=2
set noshowmode
set laststatus=2
set completeopt-=preview
set ignorecase
set smartcase
set relativenumber
set number
set copyindent
set preserveindent
set noexpandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4
set autoindent
set noswapfile
let mapleader=","
let maplocalleader=",,"
set listchars=tab:▸\ ,eol:¬,nbsp:%,trail: ,trail:·

map <leader>ev :new ~/.vimrc<cr>
map <leader>sv :source ~/.vimrc<cr>
map <leader>l :set list!<CR>
map <leader>vp :VimuxPromptCommand <CR>
map <leader>vl :VimuxRunLastCommand <CR>
map <leader>vk :VimuxScrollUpInspect <CR>
map <leader>vj :VimuxScrollDownInspect <CR>
map <leader>vi :VimuxInspectRunner <CR>

set diffopt+=vertical


syntax on
set background=dark
let g:solarized_underline=0
let g:solarized_diffmode="high"
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

syn sync fromstart

filetype plugin on
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#branch#format = 0
"let g:airline_section_a= airline#section#create_left(['mode'])
"let g:airline_section_x= ''
"let g:airline_section_y= ''
"let g:airline#extensions#hunks#non_zero_only = 1
"let g:airline#extensions#default#layout = [
"      \ [ 'a', 'b', 'c' ],
"      \ [ 'z', 'error', 'warning' ]
"      \ ]
"let g:airline_highlighting_cache = 1
highlight clear SignColumn

set splitright
nnoremap <c-w>\| :vnew <cr>
nnoremap <c-w>% :new <cr>
nnoremap - <c-w>-
map + <c-w>+
map <leader><space> :noh <cr>
map <silent> <Leader>H :vertical resize +5<cr>
map <silent> <Leader>L :vertical resize -5<cr>
map <silent> <Leader>J :resize +5<cr>
map <silent> <Leader>K :resize -5<cr>

nnoremap <Leader>m :Neomake<cr>
botright cwindow
nnoremap <LocalLeader>cd :lcd %:p:h<cr>
let g:lt_height = 10
let g:lt_location_list_toggle_map = '<localleader>ll'
let g:lt_quickfix_list_toggle_map = '<localleader>cc'

map <Leader>gR :TernRename <cr>
map <leader>gr :TernRef<cr>
map <leader>gd :TernDef<cr>
map <leader>gD :TernDefPreview<cr>
map <leader>gh :TernDoc<cr>

map <leader>nt :NERDTreeToggle<cr>

let g:tern_show_signature_in_pum = '1'
let g:tern_request_timeout = 1

set undofile
set udir=~/.vim/undo/

"colorscheme solarized


"autocmd! BufWritePost * Neomake
"autocmd BufEnter * silent! lcd %:p:h


let g:neomake_grunt_maker = {
    \ 'exe': 'grunt',
    \ 'args': ['--no-color', 'dev', 'test'],
    \ 'errorformat': '%E>>\ Failed:`%m`:\ %f:%l:%c',
    \ }
let g:neomake_javascript_grunt_maker = {
    \ 'exe': 'grunt',
    \ 'args': ['--no-color', 'dev', 'test', '--file'],
    \ 'errorformat': '%E>>\ Failed:`%m`:\ %f:%l:%c',
    \ }

let g:neomake_javascript_mocha_maker = {
    \ 'exe': 'mocha',
    \ 'args': ['--no-colors', '--recursive'],
    \ 'errorformat': '%E%*[\ ]%.%#Error: %m' .
	\		',%Z%*[\ ]%m (%f:%l:%c)' .
	\		',%Z%*[\ ]at\ %f:%l:%c' .
	\		',%-G%.%#'
    \ }
let g:neomake_test_maker = {
    \ 'exe': 'cat',
    \ 'args': ['/tmp/mocha.out'],
    \ 'errorformat': '%E%*[\ ]%.%#Error: %m' .
	\		',%Z%*[\ ]%m (%f:%l:%c)' .
	\		',%Z%*[\ ]at\ %f:%l:%c' .
	\		',%-G%.%#'
    \ }
",%Z%*%m (%f:%l:%c)',
nnoremap <LocalLeader>t :Neomake grunt<cr>
"let g:neomake_javascript_enabled_makers = ['mocha']
let g:slime_target = "tmux"
