return {
	"nvim-pack/nvim-spectre",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require "spectre".setup({ is_block_ui_break = true })

		vim.keymap.set('n', '<leader>ss', '<cmd>lua require("spectre").toggle()<CR>', {
			desc = "Toggle Spectre"
		})
		vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
			desc = "Search current word"
		})
		vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
			desc = "Search current word"
		})
		vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
			desc = "Search on current file"
		})
	end,
}
