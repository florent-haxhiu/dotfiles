vim.opt.termguicolors = true

require("bufferline").setup({
  options = {
    separator_style = "slant",
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
  },
})

local nnoremap = require("lenti.keymap").nnoremap

for i = 1, 9 do
  nnoremap("<leader>" .. i, function()
    require("bufferline").go_to_buffer(i, true)
  end)
end
nnoremap("<leader>" .. 0, function()
  require("bufferline").go_to_buffer(-1, true)
end)
