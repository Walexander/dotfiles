call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
" Plug 'itchyny/lightline.vim'
Plug 'mhartington/formatter.nvim'

Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'feline-nvim/feline.nvim'
Plug 'Pocco81/dap-buddy.nvim', { 'branch': 'main' }
Plug 'lewis6991/gitsigns.nvim', {'branch': 'main'}
Plug 'David-Kunz/markid', { 'branch': 'main' }
Plug 'p00f/nvim-ts-rainbow'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim', {'branch': 'main'}
Plug 'whiteinge/diffconflicts'
Plug 'altercation/vim-colors-solarized'
Plug 'honza/vim-snippets'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jpalardy/vim-slime', { 'branch': 'main' }
Plug 'EthanJWright/vs-tasks.nvim', {'branch': 'main'}
Plug 'tpope/vim-repeat'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'avakhov/vim-yaml'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/ListToggle'
Plug 'mileszs/ack.vim'
" Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'chriskempson/base16-vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/tree-sitter-query'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'mhartington/oceanic-next'
" Plug 'marko-cerovac/material.nvim' {'branch': 'main'}
Plug 'tpope/vim-commentary'

" Plug 'folke/tokyonight.nvim'
Plug 'Yagua/nebulous.nvim', {'branch': 'main'}

Plug 'ryanoasis/vim-devicons'

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}

" Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'neovim/nvim-lspconfig'

 " Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'mattn/emmet-vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'liuchengxu/vista.vim'
" Plug 'puremourning/vimspector'

" Plug 'ray-x/lsp_signature.nvim'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'bfrg/vim-jq'
Plug 'jxnblk/vim-mdx-js'
Plug 'styled-components/vim-styled-components', {'branch': 'main'}


Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
call plug#end()


let g:user_emmet_leader_key=','

set noshowcmd
set noshowmatch
set noshowmode
set nowildignorecase
let g:loaded_matchparen=1

" Automatically start language servers.
" let g:LanguageClient_autoStart = 1
" Minimal LSP configuration for JavaScript
"let g:LanguageClient_serverCommands = {}
"let g:LanguageClient_loggingFile = '/tmp/lc.log'
"let g:LanguageClient_loggingLevel = 'ERROR'
"nnoremap <silent> <Leader>gR :call LanguageClient#textDocument_rename()<CR>
"nnoremap <silent> <Leader>gd :call LanguageClient#textDocument_hover()<CR>
"nnoremap <silent> <Leader>gS :call LanguageClient#textDocument_documentSymbol()<CR>
"nnoremap <F5> :call LanguageClient_contextMenu()<CR>
"map <leader>gr :TernRef<cr>
"map <leader>gd :TernDef<cr>
"map <leader>gD :TernDefPreview<cr>
"map <leader>gh :TernDoc<cr>
"let  g:python3_host_prog='python3'
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {}
"call deoplete#custom#option({
"      \ 'complete_method': 'omnifunc'
"      \ })
""let g:deoplete#ignore_sources.php = ['omni']
""let g:phpcd_php_cli_executable = '/usr/local/bin/php'
filetype plugin indent on     " required!
set hidden
set hlsearch
set wildmenu
set guifont=Source\ Code\ Pro\ Medium:h13
set showbreak=
set foldlevelstart=2
set noshowmode
set completeopt=menuone,noselect

set ignorecase
set relativenumber
set number
set copyindent
set preserveindent
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2
set noswapfile
let mapleader=","
let maplocalleader=",,"
set listchars=tab:▸\ ,eol:¬,nbsp:%,trail: ,trail:·

map <leader>ev :new ~/.vimrc<cr>
map <leader>sv :source ~/.vimrc<cr>
map <leader>l :set list!<CR>
" map <leader>v :Vista coc<CR>
set diffopt+=vertical


syntax on
let g:material_style= 'deep ocean'
let &t_8f = "\e[38;2;%lu;%lu;%lum"
let &t_8b = "\e[48;2;%lu;%lu;%lum"

 let g:oceanic_next_terminal_bold = 1
 let g:oceanic_next_terminal_italic = 1

syn sync fromstart

filetype plugin on
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 0

"let g:airline#extensions#default#layout = [
"      \ [ 'a', 'c' ],
"      \ [ 'z', 'b', 'error', 'warning' ]
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

botright cwindow
" nnoremap <LocalLeader>cd :lcd %:p:h<cr>
let g:lt_height = 10
let g:lt_location_list_toggle_map = '<leader>ll'
let g:lt_quickfix_list_toggle_map = '<leader>cc'

"map <Leader>gR :TernRename <cr>
"map <leader>gr :TernRef<cr>
"map <leader>gd :TernDef<cr>
"map <leader>gD :TernDefPreview<cr>
"map <leader>gh :TernDoc<cr>
"let g:tern_show_signature_in_pum = '1'
"let g:tern_request_timeout = 1
"
map <leader>nt :NERDTreeToggle<cr>


set undofile
set udir=~/.vim/undo/
set termguicolors


"autocmd! BufWritePost * Neomake
"autocmd BufEnter * silent! lcd %:p:h
nnoremap <LocalLeader>t :Neomake grunt<cr>
let g:neomake_javascript_enabled_makers = ['eslint']
let g:slime_target = "kitty"

" === coc.nvim ===
" nmap <silent> <leader>gd <Plug>(coc-definition)
" nmap <silent> <leader>gr <Plug>(coc-references) 
" nmap <silent> <leader>gy <Plug>(coc-type-definition) 
" nmap <silent> <leader>gi <Plug>(coc-implementation)
" nmap <silent> <localleader>af :CocCommand eslint.executeAutofix <CR>

" imap <C-l> <Plug>(coc-snippets-expand)
" vmap <C-j> <Plug>(coc-snippets-select)

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" let g:coc_snippet_next = '<tab>'

" == telescope ===
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

nnoremap <silent> K :call <SID>show_documentation()<CR>

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
" " remap for complete to use tab and <cr>
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1):
"       \ <SID>check_back_space() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" inoremap <silent><expr> <c-space> coc#refresh()

" hi CocSearch ctermfg=12 guifg=#18A3FF
" hi CocMenuSel ctermbg=109 guibg=#13354A

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" nmap <leader>rn <Plug>(coc-rename)

" xmap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap if <Plug>(coc-funcobj-i)
" omap af <Plug>(coc-funcobj-a)
" " Remap for format selected region
" xmap <leader>f  <Plug>(coc-format-selected)

" " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>gl  <Plug>(coc-codelens-action)

" nmap <silent> <TAB> <Plug>(coc-range-select)
" nmap <leader>qf  <Plug>(coc-fix-current)
" nmap <localleader>qf  :CocAction<cr>
" nmap <leader>h :silent call CocActionAsync('highlight')<CR>

let g:vimspector_enable_mappings = 'HUMAN'
lua <<EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
actions = {
  change_dir = {
    enable = false,
  }
}
})
require("nebulous").setup { variant = "night", }
require'nvim-treesitter.configs'.setup {
  markid = { enable = false },
  highlight = {
    enable = true,              -- false will disable the whole extension
    custom_captures = {
    	["import_statement"] = "Identitifier",
    },
  },
  rainbow = {
    enable = true,
    extended_mode = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      scope_incremental = '<CR>',
      node_incremental = '<TAB>',
      node_decremental = '<S-TAB>',
    }
  },
  indent = {
  	enable = true,
  },
}
EOF
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
colorscheme base16-default-dark

lua <<EOF
require "nvim-treesitter.configs".setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  }
}
EOF
lua <<EOF
require'nvim-treesitter.configs'.setup {
  textobjects = {
    lsp_interop = {
      enable = true,
      border = 'none',
      peek_definition_code = {
        ["ef"] = "@function.outer",
        ["eF"] = "@class.outer",
      },
    },
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim 
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
}
EOF

set laststatus=3
set winbar=%f
lua <<EOF
require('gitsigns').setup()
require'statusline'
-- these are all the default values
EOF

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z


au BufRead,BufNewFile *.sbt,*.sc set filetype=scala

" " Used to expand decorations in worksheets
" nmap <Leader>ws <Plug>(coc-metals-expand-decoration)

" " Toggle panel with Tree Views
" nnoremap <silent> <space>t :<C-u>CocCommand metals.tvp<CR>
" " Toggle Tree View 'metalsPackages'
" nnoremap <silent> <space>tp :<C-u>CocCommand metals.tvp metalsPackages<CR>
" " Toggle Tree View 'metalsCompile'
" nnoremap <silent> <space>tc :<C-u>CocCommand metals.tvp metalsCompile<CR>
" " Toggle Tree View 'metalsBuild'
" nnoremap <silent> <space>tb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" " Reveal current current class (trait or object) in Tree View 'metalsPackages'
" nnoremap <silent> <space>tf :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>


" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
"
  " let g:lightline = {
	" \ 'colorscheme': 'wombat',
	" \ 'active': {
	" \   'left': [ [ 'mode', 'paste' ],
	" \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
	" \ },
	" \ 'component_function': {
	" \   'cocstatus': 'coc#status',
  " \   'currentfunction': 'CocCurrentFunction'
	" \ },
	" \ }

" function! CocCurrentFunction()
  "   return get(b:, 'coc_current_function', '')
" endfunction
" " Use autocmd to force lightline update.
" autocmd User CocStatusChange,CocDiagnosticChange call coc#status()

" if executable('intelephense')
"   augroup LspPHPIntelephense
"     au!
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'intelephense',
"         \ 'cmd': {server_info->[&shell, &shellcmdflag, 'intelephense --stdio']},
"         \ 'whitelist': ['php'],
"         \ 'initialization_options': {'storagePath': '/tmp/intelephense'},
"         \ 'workspace_config': {
"         \   'intelephense': {
"         \     'files': {
"         \       'maxSize': 1000000,
"         \       'associations': ['*.php', '*.phtml'],
"         \       'exclude': [],
"         \     },
"         \     'stubs': { 'bcmath', 'wordpress'  },
"         \     'completion': {
"         \       'insertUseDeclaration': v:true,
"         \       'fullyQualifyGlobalConstantsAndFunctions': v:false,
"         \       'triggerParameterHints': v:true,
"         \       'maxItems': 100,
"         \     },
"         \     'format': {
"         \       'enable': v:true
"         \     },
"         \   },
"         \ }
"         \})
"   augroup END
" endif


nnoremap <Leader>ta :lua require("telescope").extensions.vstask.tasks()<CR>
nnoremap <Leader>ti :lua require("telescope").extensions.vstask.inputs()<CR>
nnoremap <Leader>tt :lua require("telescope").extensions.vstask.close()<CR>


nnoremap <Leader>dc :lua require('dap').continue()<CR>
nnoremap <Leader>do :lua require('dapui').open()<CR>
nnoremap <Leader>dx :lua require('dapui').close()<CR>
nnoremap <Leader>db :lua require('dap').toggle_breakpoint()<CR>
nnoremap <Leader>dq :lua require('dap').toggle_breakpoint()<CR>

nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <F10> <Cmd>lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> <Cmd>lua require'dap'.step_into()<CR>
nnoremap <silent> <F12> <Cmd>lua require'dap'.step_out()<CR>
nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
set mouse=

nnoremap <leader>tt <cmd>NvimTreeToggle<cr>
nnoremap <leader>a <cmd>TroubleToggle<cr>
nnoremap <space>a <cmd>TroubleToggle<cr>
nnoremap <space>f <cmd>EslintFixAll<cr>


lua <<EOF

local coq_settings = {
  auto_start = 'shut-up',
  clients = {
    snippets = { enabled = false },
  },
  completion = {
    smart = false

  },
  limits = {
    completion_auto_timeout = 0.15,
    completion_manual_timeout = 1.00
  }
}
local keymap = vim.keymap.set
local saga = require('lspsaga')

saga.init_lsp_saga({
  code_action_lightbulb = { enable = false }
})
keymap({"n","v"}, "<leader>qf", "<cmd>Lspsaga code_action<CR>", { silent = true })
keymap({"n","v"}, "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

-- Show line diagnostics
keymap("n", "<leader>e", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
keymap("n", "<space>e", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
-- Show cursor diagnostic
keymap("n", "<leader>e", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })
vim.g.coq_settings = coq_settings
local coq = require('coq')

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = {
  noremap=true,
  silent=true
}
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
keymap("n", "<space>e", vim.diagnostic.open_float, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
end
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = false
  }
)

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['eslint'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    -- Server-specific settings...
    settings = {
      ["rust-analyzer"] = {}
    }
}
require('lspconfig')['intelephense'].setup{
settings = {
  intelephense = {
    stubs = {
      "bcmath",
      "bz2",
      "Core",
      "curl",
      "date",
      "dom",
      "fileinfo",
      "filter",
      "gd",
      "gettext",
      "hash",
      "iconv",
      "imap",
      "intl",
      "json",
      "libxml",
      "mbstring",
      "mcrypt",
      "mysql",
      "mysqli",
      "password",
      "pcntl",
      "pcre",
      "PDO",
      "pdo_mysql",
      "Phar",
      "readline",
      "regex",
      "session",
      "SimpleXML",
      "sockets",
      "sodium",
      "standard",
      "superglobals",
      "tokenizer",
      "xml",
      "xdebug",
      "xmlreader",
      "xmlwriter",
      "yaml",
      "zip",
      "zlib",
      "wordpress",
      "wordpress-stubs",
      "woocommerce-stubs",
      "acf-pro-stubs",
      "wordpress-globals",
      "wp-cli-stubs",
      "genesis-stubs",
      "polylang-stubs"
      },
    environment = {
      includePaths = {'/home/mte90/.composer/vendor/php-stubs/', '/home/mte90/.composer/vendor/wpsyntex/'}
      },
    files = {
      maxSize = 5000000;
    }
  }
},
capabilities = capabilities,
on_attach = on_attach
}
EOF
