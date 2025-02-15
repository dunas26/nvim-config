return {
	"nanozuki/tabby.nvim",
	event = "VimEnter",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require"tabby".setup{}
	end,
	opts = {
		preset = "active_wins_at_tail",
		option = {
			nerdfont = true,
			buf_name = {
				mode = "'unique'|'relative'|'tail'|'shorten'",
			}
		}
	}
}
