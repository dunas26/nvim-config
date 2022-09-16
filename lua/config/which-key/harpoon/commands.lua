local M = {
	name = "Harpoon commands",
	a = {
		require("harpoon.mark").add_file,
		"Add file",
	},
	q = {
		require("harpoon.ui").toggle_quick_menu,
		"Quick menu",
	},
}

return M
