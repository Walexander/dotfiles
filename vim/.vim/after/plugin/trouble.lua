require('trouble').setup({
})
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>a", "<cmd>Trouble diagnostics toggle<CR>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<localleader>a", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
  {silent = true, noremap = true}
)
