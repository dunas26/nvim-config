vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.number = true
vim.o.relativenumber = true

vim.o.expandtab = false
vim.o.autoindent = true

vim.o.wrap = true

vim.o.timeoutlen = 237

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.cursorline = true

vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.signcolumn = "yes"

vim.o.backspace = "indent,eol,start"

-- vim.o.clipboard:append("unnamedplus") -- System clipboard as default

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.swapfile = false

vim.o.list = true
vim.opt.listchars:append({ tab = "» " })
vim.opt.listchars:append({ trail = "·" })
vim.opt.listchars:append({ lead = "·" })
-- vim.opt.listchars:append({ space = "·" })
vim.opt.listchars:append({ nbsp = "␣" })
vim.opt.listchars:append({ eol = "↲" })
vim.opt.listchars:append({ extends = "↪" })
vim.opt.listchars:append({ precedes = "↩" })
