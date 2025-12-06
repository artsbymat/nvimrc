return {
	cmd = { "astro-ls", "--stdio" },
	filetypes = { "astro" },
	init_options = {
		typescript = {
			tsdk = "node_modules/typescript/lib",
		},
	},
	root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
}
