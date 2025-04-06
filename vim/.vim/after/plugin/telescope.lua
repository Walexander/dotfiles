local builtin = require("telescope.builtin")

local telescope = require("telescope")

telescope.setup({
	pickers = {
		find_files = {
			hidden = true,
		},
	},
})

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>sf", builtin.live_grep, {})
vim.keymap.set("n", "<leader>sb", ":Telescope buffers<cr>", {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
