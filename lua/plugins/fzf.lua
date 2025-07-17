return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		keymap = {
			builtin = {
				["<C-d>"] = "preview-page-down",
				["<C-u>"] = "preview-page-up",
			},
		},
		files = {
			fd_opts = [[--exclude *.mp4 --exclude *.avi --exclude *.mkv --exclude *.webm --exclude *.jpeg --exclude *.png --exclude *.jpg]],
		},
		previewers = {
			builtin = {
				syntax = true,
				syntax_limit_l = 100,
				syntax_limit_b = 1024 * 1024,
				limit_b = 1024 * 1024 * 10,
			},
		},
	},
	keys = {
		{
			"<leader>ff",
			function()
				require("fzf-lua").files()
			end,
		},
		{
			"<leader>fs",
			function()
				require("fzf-lua").grep()
			end,
		},
		{
			"<leader>ft",
			":TodoFzfLua<CR>",
		},
	},
}
