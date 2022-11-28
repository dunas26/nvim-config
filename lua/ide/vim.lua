-- Load plugins
require("plugins.native");

-- TreeSitter
require("nvim-treesitter.configs").setup {
	ensure_installed = { "typescript", "javascript", "html", "css", "scss", "markdown", "json" },
	auto_install = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
	},
}

-- Enable LuaLine
require("config/lualine");
-- Nvim Lsp Installer
require("mason").setup();
require("mason-lspconfig").setup();
-- Enable NvimTree
require("nvim-tree").setup();
-- Nvim CMP
require("config/cmp")
-- Enable Which Key
require("config/which-key")
-- Enable Telescope
require("telescope").setup();
-- Enable Nvim Comment
require("nvim_comment").setup({ comment_empty = false })
-- Load FZF for telescope
require("telescope").load_extension("fzf")
-- Load Leap nvim
require("leap").add_default_mappings()
-- Setup TTYMUX Keybinds
require("ttymux").setup {
	default_keybindings = false
}

-- Neovim configuration
vim.cmd([[colorscheme catppuccin]])

-- PostConfig plugins --
-- Enable Tabby
require("tabby").setup({
	tabline = require("tabby.presets").tab_with_top_win
})

-- Load all options
require("options.native")

-- VIM Commands
require("user.commands");
require("user.keymaps").setup();
