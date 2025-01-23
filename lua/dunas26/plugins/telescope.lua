return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		"nvim-tree/nvim-web-devicons",
		"nvim-treesitter/nvim-treesitter",
		"sharkdp/fd",
		"tsakirist/telescope-lazy.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require"telescope"
		local actions = require"telescope.actions"
		local wk = require"which-key"

		telescope.setup({
			defaults = {
				path_display = { filename_first = { reverse_directories = true } },
				mappings = {
					i = {
						["<S-Tab>"] = actions.move_selection_previous,
						["<Tab>"] = actions.move_selection_next,
						["<C-k"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					}
				}
			}
		})
		telescope.load_extension("fzf")
		telescope.load_extension("notify")

		wk.add({
			{ "<leader>f", group = "Find using Telescope", },
			{ "<leader>fa", "<cmd>Telescope<cr>", desc = "Open Telescope", },
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files", },
			{ "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Find words", },
			{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Find recent files", },
			{ "<leader>fc", "<cmd>Telescope grep_string<cr>", desc = "Find string under cursor", },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find buffers", },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find help tags", },
			{ "<leader>fn", "<cmd>Telescope notify<cr>", desc = "Find notifications", },
			{ "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Find keymaps", },
			{ "<leader>fj", "<cmd>Telescope jumplist<cr>", desc = "Find jump list", },
			{ "<leader>ft", "<cmd>Telescope treesitter<cr>", desc = "Find treesitter", },
			{ "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "Find diagnostics", },
			{ "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Find document symbols", },
		})
	end
}
