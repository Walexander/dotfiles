require('nvim-tree').setup({
  view = {
    width = 25,
  }
})
vim.keymap.set("n", "<leader>tt", [[:NvimTreeToggle <CR>]]);
