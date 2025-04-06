require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		yml = { "yamlfmt" },
		yaml = { "yamlfmt" },
		-- Use a sub-list to run only the first available formatter
		javascriptreact = { "prettierd", "prettier", stop_after_first = true },
		typescriptreact = { "prettierd", "prettier", stop_after_first = true },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
	},
})
