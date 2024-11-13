return {
	-- Default settings
	-- Kanagawa
	"rebelot/kanagawa.nvim",
	priority = 1000,
	dependencies = {
		-- OneDark
		"olimorris/onedarkpro.nvim",
		-- Material
		"marko-cerovac/material.nvim",
		-- Sonokai
		"sainnhe/sonokai",
		-- Tokyonight
		"folke/tokyonight.nvim",
	},
	config = function()
		vim.cmd([[colorscheme onedark_dark]])
	end
}
