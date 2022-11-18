function TokyoNight()
	vim.opt.background = "dark"
	vim.g.tokyonight_italic_functions = true
	vim.g.tokyonight_transparent = true
	vim.g.tokyonight_transparent_sidebar = true

	vim.cmd("colorscheme tokyonight-night")
end

function Catppuccino()
	local present, catppuccino = pcall(require, "catppuccino")
	if not present then
		return
	end

	catppuccino.setup({
		colorscheme = "mocha",
		transparency = false,
		term_colors = false,
		styles = {
			comments = "italic",
			functions = "italic",
			keywords = "italic",
			strings = "italic",
			variables = "NONE",
		},
		integrations = {
			cmp = true,
			treesitter = true,
			native_lsp = {
				enabled = true,
				styles = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic",
				},
			},
			lsp_trouble = false,
			lsp_saga = true,
			gitgutter = false,
			gitsigns = true,
			telescope = true,
			nvimtree = {
				enabled = true,
				show_root = false,
			},
			which_key = false,
			indent_blankline = true,
			dashboard = true,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			bufferline = true,
			markdown = true,
			lightspeed = false,
			ts_rainbow = false,
		},
	})

	catppuccino.load()
end

-- TokyoNight Theme
TokyoNight()

-- Catpupuccino
-- Catppuccino()
