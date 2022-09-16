local telescope = function(command)
	local TELESCOPE = "<cmd>Telescope ";
	return TELESCOPE..command.."<cr>";

end
local M = {
		name = "Telescope",
		f = { telescope("fd"), "Files" },
		t = { telescope("live_grep"), "Word" },
		g = { telescope("git_files"), "Git Files"},
		c = { telescope("commands"), "Commands" },
		s = { telescope("lsp_document_symbols"), "Symbols"}
}

return M
