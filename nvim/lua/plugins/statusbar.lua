local utils = require "utils"

return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    init = function()
      local clients_lsp = function()
        local clients = vim.lsp.get_clients()
        local clients_list = {}
        for _, client in pairs(clients) do
          table.insert(clients_list, client.name)
        end
        return 'LSP: ' .. utils.dump(clients_list)
      end
      require('lualine').setup({
        options = { theme = 'auto' },
        sections = {
          lualine_a = { "buffers" },
          lualine_c = { clients_lsp }
        }
      })
    end
  }
}
