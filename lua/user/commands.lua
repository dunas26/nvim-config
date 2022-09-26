local lib = require "user.lib"
local customConfigs = require "config.lsp"
local M = {};

M.startLsp = function(lsp_name)
	local lspconfig = require "lspconfig"
	local serverconfig = lspconfig[lsp_name]
	if serverconfig == nil then
		print("LSP Config is null")
		return
	end
	local opts = lib.in_table(customConfigs, lsp_name)
			and customConfigs[lsp_name][1]()
			or {}
	serverconfig.setup(opts)
end

vim.api.nvim_command([[command! -nargs=1 StartLsp :lua require("user.commands").startLsp(<f-args>)]])
return M;
