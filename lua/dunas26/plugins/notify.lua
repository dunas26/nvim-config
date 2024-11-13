return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			max_width = 80,
			render = "compact",
			timeout = 2000,
			top_down = false,
		})
		vim.notify = require("notify")
	end
}
