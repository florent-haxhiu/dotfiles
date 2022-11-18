local present, catppuccin = pcall(require, "catppuccin")
if not present then return end

vim.g.catppuccin_flavour = "frappe"

catppuccin.setup {
	compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
    flavour = "frappe",
	term_colors = true,
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		keywords = { "italic" },
	},
	integrations = {
		treesitter = true,
		markdown = true,
		nvimtree = true,
		neotest = true,
		dap = {
			enabled = true,
			enable_ui = true,
		},
		lsp_saga = true,
		neogit = true,
        cmp = true,
	},
	custom_highlights = {
		CmpBorder = { fg = "#3e4145" },
	},
}

--vim.api.nvim_command "colorscheme catppuccin-frappe"
