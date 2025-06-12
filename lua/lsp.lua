local keymap = vim.keymap
local lsp = vim.lsp
local command = vim.api.nvim_create_user_command

vim.lsp.config("*", {
	capabilities = {
		textDocument = {
			semanticTokens = {
				multilineTokenSupport = true,
			},
			completion = {
				completionItem = {
					snippetSupport = true,
					commitCharactersSupport = true,
					deprecatedSupport = true,
					preselectSupport = true,
					insertReplaceSupport = true,
					labelDetailsSupport = true,
					resolveSupport = {
						properties = {
							"documentation",
							"detail",
							"additionalTextEdits",
						},
					},
				},
			},
		},
	},
	on_attach = function(client, bufnr)
		if client:supports_method("textDocument/hover") or client:supports_method("textDocument/signatureHelp") then
			keymap.set("n", "K", function()
				lsp.buf.hover({
					silent = true,
					border = "single",
					width = math.floor(vim.o.columns / 2),
				})
			end, { buffer = true, desc = "LSP: Show Documentation" })
		end

		if not client:is_stopped() then
			command("LspStop", function()
				client:stop({ force = true })
				vim.notify(client.name:upper() .. " already stopped")
			end, { nargs = 0 })
		end
	end,
})

vim.lsp.enable({
	"luals",
	"cssls",
	"tsls",
	"emmetls",
	"tailwindcssls",
})

vim.diagnostic.config({
	virtual_lines = false,
	virtual_text = false,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "single",
		source = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		local opts = { buffer = event.buf }
		vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
		vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
	end,
})
