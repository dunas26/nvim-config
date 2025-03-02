return {
	-- Default settings
	-- Gruvbox Material
	"sainnhe/gruvbox-material",
	priority = 1000,
	dependencies = {
		-- Kanagawa
		"rebelot/kanagawa.nvim",
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
		vim.g.gruvbox_material_background = 'medium'
		vim.g.gruvbox_material_foreground = 'mix'
		vim.g.gruvbox_material_better_performance = 1
		vim.g.gruvbox_material_enable_italic = true
		vim.g.gruvbox_material_enable_bold = true
		

		require 'lualine'.setup {
			options = {
				theme = 'gruvbox-material'
			}
		}

		vim.cmd.colorscheme('gruvbox-material')
	end
}
