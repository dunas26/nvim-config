return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require"toggleterm".setup{}
		local wk = require"which-key"

		wk.add({
			{ "<leader>t", "<cmd>ToggleTerm direction=float<cr>", desc = "Toggle floating terminal" },
		});

	end,
}
