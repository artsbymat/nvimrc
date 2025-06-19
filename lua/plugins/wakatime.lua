return {
	"wakatime/vim-wakatime",
	lazy = false,
	opts = {
		ignore = {
			"COMMIT_EDITMSG$",
			"PULLREQ_EDITMSG$",
			"MERGE_MSG$",
			"TAG_EDITMSG$",
			"%.tmp$",
			"/tmp/",
			"%.log",
			"brain-hub/",
		},
	},
}
