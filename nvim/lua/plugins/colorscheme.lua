return {
  {
    'comfysage/evergarden',
    config = function()
      require("evergarden").setup({
        transparent_background = false,
        variant = 'medium'
      })
    end
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
  },
}
-- vim: ts=2 sts=2 sw=2 et
