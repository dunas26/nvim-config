return {
	"ThePrimeagen/harpoon",
	event = { "BufReadPre", "BufNewFile" },
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local harpoon = require "harpoon"

		harpoon:setup({})

		vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add file to Harpoon List" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-p>", function() harpoon:list():prev() end, { desc = "Previous file in Harpoon list" })
		vim.keymap.set("n", "<C-S-n>", function() harpoon:list():next() end, { desc = "Next file in Harpoon list" })

		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local finder = function()
				local paths = {}
				for _, item in ipairs(harpoon_files.items) do
					table.insert(paths, item.value)
				end

				return require("telescope.finders").new_table({
					results = paths,
				})
			end

			require("telescope.pickers").new({}, {
				prompt_title = "Harpoon",
				finder = finder(),
				previewer = conf.file_previewer({}),
				sorter = require("telescope.config").values.generic_sorter({}),
				layout_config = {
					height = 0.4,
					width = 0.5,
					prompt_position = "top",
					preview_cutoff = 120,
				},
				attach_mappings = function(prompt_bufnr, map)
					map("i", "<C-d>", function()
						local state = require("telescope.actions.state")
						local selected_entry = state.get_selected_entry()
						local current_picker = state.get_current_picker(prompt_bufnr)

						table.remove(harpoon_files.items, selected_entry.index)
						current_picker:refresh(finder())
					end)
					return true
				end,
			}):find()
		end
		vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })
	end
}
