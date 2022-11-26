local lib = require "user.lib"
local customConfigs = require "config.lsp"
local M = {};

M.startLsp = function(lsp_name)
	local lspconfig = require "lspconfig"
	local serverconfig = lspconfig[lsp_name]
	if serverconfig == nil then
		vim.notify("LSP Config is null")
		return
	end
	local opts = lib.in_table(customConfigs, lsp_name)
			and customConfigs[lsp_name][1]()
			or {}
	serverconfig.setup(opts)
end

local get_installed_servers = function()
	local handle = io.popen("ls $HOME/.local/share/nvim/lsp_servers")
	local result = handle:read("*a")
	handle:close()
	return split(result)
end

function split (inputstr)
        local t={}
        for str in string.gmatch(inputstr, "[%w_]+") do
                table.insert(t, str)
        end
        return t
end
vim.api.nvim_create_user_command("StartLsp", function (props)
	M.startLsp(props.args)
end, {
		nargs = 1,
		complete = function(_, _)
			return require"mason-lspconfig".get_installed_servers()
		end
	})
return M;
