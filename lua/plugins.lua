vim.cmd([[packadd packer.nvim]])

return require("packer").startup(
	function()
		use "wbthomason/packer.nvim"
		use "onsails/lspkind.nvim"
		use {
			"catppuccin/nvim", as = "catppuccin"
		}
		use {
			"neovim/nvim-lspconfig",
			requires = {
				"williamboman/mason.nvim",
				"williamboman/mason-lspconfig.nvim"
			}
		}
		use {
			"nanozuki/tabby.nvim",
		}
		use "EdenEast/nightfox.nvim"
		use {
			"nvim-lualine/lualine.nvim",
			requires = { "kyazdani42/nvim-web-devicons", opt = true }
		}
		use {
			"kyazdani42/nvim-tree.lua",
			requires = {
				"kyazdani42/nvim-web-devicons",
				opt = true
			},
			tag = "nightly"
		}
		use { "folke/which-key.nvim" }
		use { "folke/trouble.nvim",
			requires = {
				"kyazdani42/nvim-web-devicons",
				opt = true
			}
		}
		use {
			"hrsh7th/nvim-cmp",
			requires = {
				{ "neovim/nvim-lspconfig", opt = true },
				{ "hrsh7th/cmp-nvim-lsp" },
				{ "hrsh7th/cmp-buffer" },
				{ "hrsh7th/cmp-path" },
				{ "hrsh7th/cmp-cmdline" },
				{ "hrsh7th/vim-vsnip", requires = { "hrsh7th/cmp-vsnip" } },
			},
		}
		use "christoomey/vim-tmux-navigator"
		use "tpope/vim-surround"
		use "ggandor/leap.nvim"
		use "wellle/targets.vim"
		use {
			"nvim-treesitter/nvim-treesitter",
			run = "<cmd>TSUpdate<cr>"
		}
		use {
			"nvim-telescope/telescope.nvim",
			requires = {
				{ "nvim-lua/plenary.nvim" }
			}
		}
		use "terrortylor/nvim-comment"
		use {
			"prettier/vim-prettier",
			run = "yarn install --frozen-lockfile --production",
			ft = { "javascript", "typescript", "css", "less", "scss", "json", "graphql", "markdown", "vue", "svelte", "yaml",
				"html" }
		}
		use {
			"RishabhRD/nvim-lsputils",
			requires = { "RishabhRD/popfix" }
		}
		use "wellle/context.vim"
		use "mattn/emmet-vim"
		use {
			"ThePrimeagen/harpoon",
			requires = {
				{ "nvim-lua/plenary.vim" }
			}
		}
		use "mg979/vim-visual-multi"
		use {
			"folke/todo-comments.nvim",
			requires = "nvim-lua/plenary.nvim",
			config = function()
				require("todo-comments").setup {}
			end
		}
		use {
			"nvim-telescope/telescope-fzf-native.nvim",
			run = "make"
		}
		use {
			"dnlhc/glance.nvim",
			config = function()
				require("glance").setup {}
			end
		}
	end
)
