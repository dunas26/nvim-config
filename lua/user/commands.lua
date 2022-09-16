local M = {};

M.startLsp = function(lsp_name)
	local lspconfig = require"lspconfig"
	local serverconfig = lspconfig[lsp_name]
	if serverconfig == nil then
		print("LSP Config is null")
		return
	end
	serverconfig.setup {}
end

vim.api.nvim_command([[command! -nargs=1 StartLsp :lua require("user.commands").startLsp(<f-args>)]])
return M;
