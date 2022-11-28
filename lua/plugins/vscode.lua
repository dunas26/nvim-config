-- Base VSCode safe usable plugins
return require("packer").startup(
	function()
		use "wbthomason/packer.nvim"
		use "tpope/vim-surround"
		use "ggandor/leap.nvim"
		use "wellle/targets.vim"
		use "mattn/emmet-vim"
		use "terrortylor/nvim-comment"
	end
)
