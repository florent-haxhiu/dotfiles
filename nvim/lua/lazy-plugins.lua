vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
  'tpope/vim-sleuth',
  { import = 'plugins' }
})
