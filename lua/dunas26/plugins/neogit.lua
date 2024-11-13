return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim",
		"ibhagwan/fzf-lua",
	},
	config = function()
		local neogit = require"neogit"
		local wk = require"which-key"

		wk.add({
			"<leader>g", group = "Neogit"
		})

		vim.keymap.set({ "i", "n" }, "<leader>gc", function() neogit.open({ "commit" }) end, { desc = "Neogit commit" })
		vim.keymap.set({ "i", "n" }, "<leader>gl", function() neogit.open({ "log" }) end, { desc = "Neogit status" })
		vim.keymap.set({ "i", "n" }, "<leader>gd", function() neogit.open({ "diff" }) end, { desc = "Neogit diff" })

		neogit.setup{}
	end
}
