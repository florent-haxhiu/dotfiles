function TokyoNight()
	vim.opt.background = "dark"
	vim.g.tokyonight_italic_functions = true
	vim.g.tokyonight_transparent = true
	vim.g.tokyonight_transparent_sidebar = true

	vim.cmd("colorscheme tokyonight-night")
end

function GruvBox()
	require("gruvbox").setup({
		undercurl = true,
		underline = true,
		bold = true,
		italic = true,
		strikethrough = true,
		invert_selection = false,
		invert_signs = false,
		invert_tabline = false,
		invert_intend_guides = false,
		inverse = true, -- invert background for search, diffs, statuslines and errors
		contrast = "", -- can be "hard", "soft" or empty string
		palette_overrides = {},
		overrides = {},
		dim_inactive = false,
		transparent_mode = false,
	})
	vim.cmd("colorscheme gruvbox")
	vim.o.background = "dark" -- or "light" for light mode
	vim.cmd([[colorscheme gruvbox]])
end

GruvBox()

-- TokyoNight Theme
--TokyoNight()

-- Catpupuccino
-- Catppuccino()
