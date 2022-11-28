-- Variables
vim.g.mapleader = " ";
-- Emmet Vim configuration
vim.g.user_emmet_leader_key = "<C-K>";
vim.g.user_emmet_settings = {
	javascript = { extends = "jsx" },
	typescriptreact = { extends = "jsx" }
}

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
