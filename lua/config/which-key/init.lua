local wk = require("which-key");
local telescope_commands = require("config.which-key.telescope.commands")
local lspconfig_commands = require("config.which-key.lspconfig.commands")
local harpoon_commands = require("config.which-key.harpoon.commands")
wk.register({
	name = "Quick Access",
	e = { "<cmd>NvimTreeToggle<cr>", "Nvim Tree" },
	t = telescope_commands,
	l = lspconfig_commands,
	h = harpoon_commands,
}, { prefix = "<leader>" })
wk.setup();
