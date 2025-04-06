-- require("ollama").setup({
-- 	cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },
--   keys = {
--         -- Sample keybind for prompt menu. Note that the <c-u> is important for selections to work properly.
--     {
--       "<leader>oo",
--       ":<c-u>lua require('ollama').prompt()<cr>",

--       desc = "ollama prompt",
--       mode = { "n", "v" },

--     },


--   },
-- })
-- require("OllamaCopilot").setup({
--   model_name = "deepseek-coder:1.3b",
--   stream_suggestion = false,
--   python_command = "python3",
--   filetypes = { "javascript", "lua", "vim", "markdown" },
--   keymaps = {
--     suggestion = "<leader>os",
--     reject = "<leader>or",
--     insert_accept = "<Tab>",
--   },
-- })
