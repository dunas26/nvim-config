return {
	"Exafunction/codeium.vim",
	event = "BufEnter",
	config = function()
		-- Keymaps
		vim.g.codeium_disable_bindings = 1

		vim.keymap.set("i", "c;", function() return vim.fn["codeium#Accept"]() end, { expr = true })
		vim.keymap.set("i", "c.", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
		vim.keymap.set("i", "c,", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
		vim.keymap.set("i", "<c-l>", function() return vim.fn["codeium#AcceptNextLine"]() end, { expr = true })
		vim.keymap.set("i", "<c-h>", function() return vim.fn["codeium#AcceptNextWord"]() end, { expr = true })
		vim.keymap.set("i", "cx", function() return vim.fn["codeium#Clear"]() end, { expr = true })
	end
}
