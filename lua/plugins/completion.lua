return {
	"saghen/blink.cmp",
	version = "1.*",
	dependencies = {
		"L3MON4D3/LuaSnip",
	},
	config = function()
		-- Load Snippet
		require("luasnip.loaders.from_vscode").load({ paths = "./lua/snippets" })
		vim.api.nvim_create_user_command("LuaSnipEdit", function()
			require("luasnip.loaders").edit_snippet_files()
		end, { desc = "Edit Custom Snippets" })

		require("blink-cmp").setup({
			snippets = { preset = "luasnip" },
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
			cmdline = {
				enabled = false,
			},
			term = {
				enabled = false,
			},
			completion = {
				accept = {
					create_undo_point = false,
					auto_brackets = {
						enabled = false,
					},
				},
				list = {
					selection = { preselect = true, auto_insert = false },
				},
				menu = {
					border = "single",
					draw = {
						treesitter = { "lsp" },
						columns = {
							{ "label", "label_description", gap = 1 },
							{ "kind_icon", gap = 1 },
							{ "source_name", gap = 1 },
						},
						components = {
							source_name = {
								highlight = "BlinkCmpKind",
							},
						},
					},
				},
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 300,
					window = {
						border = "single",
					},
				},
			},
		})
	end,
}
