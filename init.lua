-- Load plugins
require("plugins");

-- TreeSitter
require("nvim-treesitter.configs").setup{
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
require("nvim-lsp-installer").setup();
-- Enable NvimTree
require("nvim-tree").setup();
-- Nvim CMP
require("config/cmp")
-- Enable Which Key
require("config/which-key")
-- Enable Telescope
require("telescope").setup();
-- Enable Nvim Comment
require("nvim_comment").setup({comment_empty = false})
-- Load FZF for telescope
require("telescope").load_extension("fzf")

-- Emmet Vim configuration
vim.g.user_emmet_leader_key = "<C-K>";
vim.g.user_emmet_settings = { javascript = { extends = "jsx" }, typescriptreact = { extends = "jsx" } }

-- Neovim configuration
vim.cmd([[colorscheme catppuccin]]);

-- Variables
vim.g.mapleader = " ";

-- Options
vim.o.termguicolors = true;
vim.o.timeoutlen = 238;
vim.o.tabstop = 2;
vim.o.shiftwidth = 2;
vim.o.expandtab = false;
vim.o.number = true;
vim.o.relativenumber = true;
vim.o.swapfile = false;
vim.o.signcolumn = "yes:2";

-- Mappings
vim.keymap.set({'i', 'c', 'v'}, 'jk', '<Esc>');
-- PostConfig plugins --
-- Enable Tabby
require("tabby").setup({
	tabline = require("tabby.presets").tab_with_top_win
})

-- VIM Commands
require("user.commands");
require("user.keymaps").setup();
