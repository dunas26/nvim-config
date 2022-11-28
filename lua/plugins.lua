vim.cmd([[packadd packer.nvim]])

if vim.g.vscode then
	require("plugins.vscode")
else
	require("plugins.native")
end
