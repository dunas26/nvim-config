local M = {}

M.setup = function()
	vim.keymap.set({ 'i', 'c', 'v' }, 'jk', '<Esc>');
	vim.keymap.set('n', 'K', vim.lsp.buf.hover)
	-- TTYMUX mappings
	vim.keymap.set("n", "<C-h>", function() require("ttymux.window").navigate("h") end)
	vim.keymap.set("n", "<C-l>", function() require("ttymux.window").navigate("l") end)
	vim.keymap.set("n", "<C-j>", function() require("ttymux.window").navigate("j") end)
	vim.keymap.set("n", "<C-k>", function() require("ttymux.window").navigate("k") end)
end

return M
