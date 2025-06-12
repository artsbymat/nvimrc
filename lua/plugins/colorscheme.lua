return {
	"olimorris/onedarkpro.nvim",
	priority = 1000,
	opts = {},
	config = function()
		require("onedarkpro").setup({
			options = {
				cursorline = true,
				transparency = true,
				terminal_colors = true,
			},
			highlights = {
				LineNr = {
					fg = "#828c9e",
				},
			},
		})
	end,
}
