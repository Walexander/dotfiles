vim.cmd.packadd("packer.nvim")
return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"RRethy/nvim-base16",
		config = function()
			vim.cmd("colorscheme base16-3024")
		end,
	})

	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({
				icons = true,
			})
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use("nvim-treesitter/playground")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use("tpope/vim-surround")
	use("tpope/vim-unimpaired")
	use("tpope/vim-commentary")
	use({
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
		requires = "nvim-treesitter/nvim-treesitter",
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			-- { 'jose-elias-alvarez/null-ls.nvim' },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },

			{ "tzachar/cmp-ai" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "onsails/lspkind.nvim" },
			-- Snippets
			-- { "saadparwaiz1/cmp_luasnip" },
			-- { "L3MON4D3/LuaSnip" },
			-- { "rafamadriz/friendly-snippets" },
		},
	})
	use({
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup({
        cleanup_delay_ms = false
      })
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = {
			{ "RRethy/nvim-base16" },
			{ "nvim-tree/nvim-web-devicons" },
		},
	})

	use({
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					yml = { "yamlfmt" },
					yaml = { "yamlfmt" },
					-- Use a sub-list to run only the first available formatter
					javascript = { "prettierd" },
					typescript = { "prettierd" },
				},
			})
		end,
	})
	-- use("laytan/cloak.nvim")
	use("rcarriga/nvim-notify")
	-- use("nomnivore/ollama.nvim", {
	-- 	requires = {
	-- 		"nvim-lua/plenary.nvim",
	-- 	},
	-- 	config = function()
	-- 		require("ollama").setup({
	-- 			cmd = { "Ollama", "OllamaServe", "OllamaStop" },
	-- 			keys = {
	-- 				-- Sample keybind for prompt menu. Note that the <c-u> is important for selections to work properly.

	-- 				{
	-- 					"<leader>oo",
	-- 					":<c-u>lua require('ollama').prompt()<cr>",

	-- 					desc = "ollama prompt",
	-- 					mode = { "n", "v" },
	-- 				},
	-- 			},
	-- 		})
	-- 	end,
	-- })
	-- use({
	-- 	"jacob411/Ollama-Copilot",
	-- })
end)
