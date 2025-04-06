local lsp = require("lsp-zero")
local lspkind = require("lspkind")

lsp.preset("recommended")

local cmp_ai = require("cmp_ai.config")
cmp_ai:setup({
	max_lines = 10,
	provider = "Ollama",
	provider_options = {
		model = "starcoder2:3b",
		options = {
			num_predict = 128,
		},
	},
	notify = true,
	notify_callback = function(msg)
		vim.notify(msg)
	end,
	run_on_every_keystroke = false,
	ignored_file_types = {
		-- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	},
})
-- lsp.ensure_installed({
--   'tsserver',
--   'rust_analyzer',
-- })

-- Fix Undefined global 'vim'

local cmp = require("cmp")

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
	}, {
		{ name = "buffer" },
		{ name = "path" },
	}),
	completion = {
		completeopt = "menu,menuone,noinsert",
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-x>"] = cmp.mapping(
			cmp.mapping.complete({
				config = {
					sources = cmp.config.sources({
						{ name = "cmp_ai" },
					}),
				},
			}),
			{ "i" }
		),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<C-y>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol", -- show only symbol annotations
			maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
			-- can also be a function to dynamically calculate max width such as
			-- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
			ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
			show_labelDetails = true, -- show labelDetails in menu. Disabled by default

			-- The function below will be called before any actual modifications from lspkind
			-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
		}),
	},
})

lsp.configure("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})
-- lsp.configure('intelephense', {
-- 	setings = {
-- 		intelephense = {
--       environment = {
--         includePaths = {
--           '/Users/walexander/.composer/vendor/php-stubs'
--         }
--       },
--       diagnostics = { enable = true },
--       files = {
--         maxSize = 50000000,
-- 			},

-- 			-- stubs = {
-- 			-- 	"bcmath",
-- 			-- 	"bz2",
-- 			-- 	"calendar",
-- 			-- 	"Core",
-- 			-- 	"curl",
-- 			-- 	"zip",
-- 			-- 	"zlib",
-- 			-- 	"wordpress",
-- 			-- 	"woocommerce",
-- 			-- 	"acf-pro",
-- 			-- 	"wordpress-globals",
-- 			-- 	"wp-cli",
-- 			-- 	"genesis",
-- 			-- 	"polylang",
-- 			-- },
-- 		},
-- 	},
-- })

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = "E",
		warn = "W",
		hint = "H",
		info = "I",
	},
})

lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr, remap = false }
	if _.name == "gleam" then
		_.server_capabilities.documentFormattingProvider = true
	end

	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	vim.keymap.set("n", "<leader>gd", function()
		vim.lsp.buf.definition()
	end, opts)
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
	vim.keymap.set("n", "D", function()
		vim.diagnostic.open_float()
	end, opts)
	vim.keymap.set("n", "<leader>vws", function()
		vim.lsp.buf.workspace_symbol()
	end, opts)
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_next()
	end, opts)
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_prev()
	end, opts)
	vim.keymap.set("n", "<leader>qf", function()
		vim.lsp.buf.code_action()
	end, opts)
	vim.keymap.set("n", "<leader>rr", function()
		vim.lsp.buf.references()
	end, opts)
	vim.keymap.set("n", "<leader>rn", function()
		vim.lsp.buf.rename()
	end, opts)
	vim.keymap.set("i", "<C-s>", function()
		vim.lsp.buf.signature_help()
	end, opts)
end)

vim.diagnostic.config({
	virtual_text = false,
})

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "ts_ls", "lua_ls", "vimls", "cssls", "intelephense" },
	handlers = {
		lsp.default_setup,
		ts_ls = function()
			require("lspconfig")["ts_ls"].setup({
				root_dir = require("lspconfig.util").root_pattern(".git") or vim.loop.cwd(),
			})
		end,
	},
})
--
require("lspconfig")["roc_ls"].setup({})
require("lspconfig")["gleam"].setup({})
require("lspconfig")["gopls"].setup({})
require("lspconfig")["cssls"].setup({})
require("lspconfig")["zls"].setup({})
require("lspconfig")["helm_ls"].setup({})
require("lspconfig")["cucumber_language_server"].setup({
  settings = {
    Cucumber = {
      glue = {
        "**/e2e/**/*.js",
      }

    }
  }
})
require("lspconfig")["intelephense"].setup({
	settings = {
		intelephense = {
			diagnostics = { enable = true },
			environment = {
				includePaths = {
					"/Users/walexander/.composer/vendor/php-stubs",
				},
			},
			stubs = {
        "apache",
        "bcmath",
        "bz2",
        "calendar",
        "com_dotnet",
        "Core",
        "ctype",
        "curl",
        "date",
        "dba",
        "dom",
        "enchant",
        "exif",
        "FFI",
        "fileinfo",
        "filter",
        "fpm",
        "ftp",
        "gd",
        "gettext",
        "gmp",
        "hash",
        "iconv",
        "imap",
        "intl",
        "json",
        "ldap",
        "libxml",
        "mbstring",
        "meta",
        "mysqli",
        "oci8",
        "odbc",
        "openssl",
        "pcntl",
        "pcre",
        "PDO",
        "pgsql",
        "Phar",
        "posix",
        "pspell",
        "random",
        "readline",
        "Reflection",
        "session",
        "shmop",
        "SimpleXML",
        "snmp",
        "soap",
        "sockets",
        "sodium",
        "SPL",
        "sqlite3",
        "standard",
        "superglobals",
        "sysvmsg",
        "sysvsem",
        "sysvshm",
        "tidy",
        "tokenizer",
        "wordpress",
        "xml",
        "xmlreader",
        "xmlrpc",
        "xmlwriter",
        "xsl",
        "Zend OPcache",
        "zip",
        "zlib"
			},
			files = {
				maxSize = 50000000,
			},
		},
	},
})
