return {
	"akinsho/bufferline.nvim",
	version = "*",
	after = "catppuccin",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local mocha = require("catppuccin.palettes").get_palette("mocha")
		require("bufferline").setup({
			highlights = require("catppuccin.groups.integrations.bufferline").get({
				styles = { "italic", "bold" },
				custom = {
					all = {
						fill = { bg = "#000000" },
					},
					mocha = {
						background = { fg = mocha.text },
					},
					latte = {
						background = { fg = "#000000" },
					},
				},
			}),
			options = {
				hover = {
					enabled = true,
					delay = 200,
					reveal = { "close" },
				},
				indicator = {
					icon = "▎",
					style = "underline",
				},
				buffer_close_icon = "󰅖",
				modified_icon = "●",
				close_icon = "",
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "left",
						separator = true,
					},
				},
			},
		})
	end,
}
