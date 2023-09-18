vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("nvim-treesitter/playground")

    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("lervag/vimtex")
    use {
        "nvim-neorg/neorg",
        run = ":Neorg sync-parsers",
        requires = "nvim-lua/plenary.nvim",
    }

    use ('andweeb/presence.nvim')

    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
            { "jay-babu/mason-null-ls.nvim" },
            { "jose-elias-alvarez/null-ls.nvim" }
        }
    }

    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use("nvim-telescope/telescope-fzf-native.nvim", { run = "make" })

    use("folke/tokyonight.nvim")
    use("ellisonleao/gruvbox.nvim")
    use({
        "rose-pine/neovim",
        as = "rose-pine",
        config = function ()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use {
        "w0rp/ale",
        ft = { "sh", "zsh", "bash", "c", "cpp", "cmake", "markdown", "racket", "vim", "tex" },
        cmd = "ALEEnable",
        config = "vim.cmd[[ALEEnable]]"
    }

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    use {
        "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" },
    }
end)
