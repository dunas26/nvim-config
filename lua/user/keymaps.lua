local M = {}

M.setup = function()
	vim.keymap.set('n', 'K', vim.lsp.buf.hover)
end

return M
