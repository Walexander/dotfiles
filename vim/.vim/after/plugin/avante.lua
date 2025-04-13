require("avante").setup({
	provider = "ollama",
	ollama = {
		endpoint = "http://127.0.0.1:11434", -- its enough to have endpoint here, it will be inherited
		model = "qwen2.5-coder:3b",
		options = { -- options will be inherited too
			num_ctx = 16384,
		},
	},

	["vertex_claude"] = {
		hide_in_model_selector = true,
	},
	["gemini"] = {
		hide_in_model_selector = true,
	},
	["claude-haiku"] = {
		hide_in_model_selector = true,
	},
	["claude-opus"] = {
		hide_in_model_selector = true,
	},
	["cohere"] = {
		hide_in_model_selector = true,
	},
	["bedrock"] = {
		hide_in_model_selector = true,
	},
	["aihubmix-claude"] = {
		hide_in_model_selector = true,
	},
	["aihubmix"] = {
		hide_in_model_selector = true,
	},
	["openai-gpt-4o-mini"] = {
		hide_in_model_selector = true,
	},
	vertex = {
		hide_in_model_selector = true,
	},
	copilot = {
		hide_in_model_selector = true,
	},
	claude = {
		hide_in_model_selector = true,
	},
	openai = {
		hide_in_model_selector = true,
	},
	vendors = {
		["deepseek-coder:1.3b"] = {
			__inherited_from = "ollama",
			model = "deepseek-coder:1.3b",
		},
		["qwen"] = {
			__inherited_from = "ollama",
			model = "qwen2.5-coder:3b",
		},
	},
})
