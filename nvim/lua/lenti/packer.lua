-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-context") -- Shows functions signature
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({ "sainnhe/gruvbox-material", opt = true })

	use("wakatime/vim-wakatime") -- Wakatime for github
	--

	use("jose-elias-alvarez/null-ls.nvim")
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use("dinhhuy258/git.nvim") -- Git
	use("lewis6991/gitsigns.nvim") -- Git signs on the number

	-- LSP Support
	use({ "williamboman/mason.nvim" })
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")

	-- Autocompletion
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")

	-- Snippets
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
	use({ "rafamadriz/friendly-snippets" })

	use("mhartington/formatter.nvim")
	use({ "ellisonleao/gruvbox.nvim" })

	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})
	use({
		"lewis6991/hover.nvim",
		config = function()
			require("hover").setup({
				init = function()
					-- Require providers
					require("hover.providers.lsp")
					-- require('hover.providers.gh')
					-- require('hover.providers.jira')
					-- require('hover.providers.man')
					-- require('hover.providers.dictionary')
				end,
				preview_opts = {
					border = nil,
				},
				-- Whether the contents of a currently open hover window should be moved
				-- to a :h preview-window when pressing the hover keymap.
				preview_window = false,
				title = true,
			})

			-- Setup keymaps
			vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
			vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
		end,
	})
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use({
		"danymat/neogen",
		config = function()
			require("neogen").setup({})
		end,
		requires = "nvim-treesitter/nvim-treesitter",
		-- Uncomment next line if you want to follow only stable versions
		-- tag = "*"
	})

	use({ "mbbill/undotree" })
end)
