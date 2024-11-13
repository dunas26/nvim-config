return {
	"folke/which-key.nvim",
	dependencies = {
		{ 'echasnovski/mini.icons', version = false }
	},
	event = "VeryLazy",
	config = function()
		local wk = require"which-key"
		local api = require"nvim-tree.api"
		wk.add({
			{ "<leader>e", group = "NvimTree" },
			{ "<leader>ee", api.tree.toggle, desc = "Toggle", },
			{ "<leader>ef", function() api.tree.toggle({ find_file = true }) end, desc = "Toggle & Focus File", },
		})
		wk.setup({})
	end,
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc  = "Buffer Local Keymaps (which-key)",
		},
	},
}
