------------------------------------------------------------
-- Options
------------------------------------------------------------

local indent = 2

-- Interface
vim.opt.cursorline = true
vim.opt.fillchars = { vert = "│" }
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.scrolloff = 8
vim.opt.shortmess:append("c")
vim.opt.showmode = false
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = indent
vim.opt.smartindent = true
vim.opt.softtabstop = indent
vim.opt.tabstop = indent

-- Search
vim.opt.grepprg = "rg --vimgrep"
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.smartcase = true

-- Completion
vim.opt.completeopt = { "menu", "noselect" }
vim.opt.pumheight = 10

-- Behavior
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
vim.opt.hidden = true
vim.opt.updatetime = 1000
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = false

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true
