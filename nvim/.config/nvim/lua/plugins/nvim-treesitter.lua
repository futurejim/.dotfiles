return {
	"nvim-treesitter/nvim-treesitter",
	event = "VeryLazy",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "html", "vim", "lua", "javascript", "typescript", "python" },
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false
			},

		})
	end
}
