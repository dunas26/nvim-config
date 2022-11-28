require("plugins.vscode")
--
-- Enable Nvim Comment
require("nvim_comment").setup({ comment_empty = false })
-- Load Leap nvim
require("leap").add_default_mappings()

-- Load all options
require("options.native")
