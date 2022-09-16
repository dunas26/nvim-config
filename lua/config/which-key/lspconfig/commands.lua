local M = {
	name = "LSP Commands",
	a = {
		vim.lsp.buf.code_action,
		"Code Action"
	},
	r = {
		vim.lsp.buf.rename,
		"Rename",
	},
	f = {
		vim.lsp.buf.format,
		"Format",
	},
	K = {
		vim.lsp.buf.hover,
		"Hover",
	},
	g = {
		name = "Go to ...",
		d = {
			vim.lsp.buf.definition,
			"Definition",
		},
		i = {
			vim.lsp.buf.implementation,
			"Implementation",
		},
		r = {
			vim.lsp.buf.references,
			"References",
		},
		D = {
			vim.lsp.buf.declaration,
			"Declaration",
		},
		t = {
			vim.lsp.buf.type_definition,
			"Type definition",
		}
	}
}
return M
