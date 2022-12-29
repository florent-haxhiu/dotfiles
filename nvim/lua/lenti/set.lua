-- vim.opt.guicursor = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.wrap = false

vim.opt.clipboard = "unnamedplus"
vim.opt.ignorecase = true
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.showtabline = 0

vim.cmd("syntax enable")

vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.o.completeopt = "menuone,noinsert,noselect"

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
