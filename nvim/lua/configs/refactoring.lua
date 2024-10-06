require("refactoring").setup {
  -- prompt for return type
  prompt_func_return_type = {
    go = true,
    cpp = true,
    c = true,
    java = true,
    python = true,
  },
  -- prompt for function parameters
  prompt_func_param_type = {
    go = true,
    cpp = true,
    c = true,
    java = true,
    python = true,
  },
}

local map = vim.keymap.set

map("x", "<leader>re", function()
  require("refactoring").refactor "Extract Function"
end, { desc = "CMD enter command mode" })

map("x", "<leader>rf", function()
  require("refactoring").refactor "Extract Function To File"
end, { desc = "CMD enter command mode" })

-- Extract function supports only visual mode
map("x", "<leader>rv", function()
  require("refactoring").refactor "Extract Variable"
end, { desc = "CMD enter command mode" })

-- Extract variable supports only visual mode
map("n", "<leader>rI", function()
  require("refactoring").refactor "Inline Function"
end, { desc = "CMD enter command mode" })

-- Inline func supports only normal
map({ "n", "x" }, "<leader>ri", function()
  require("refactoring").refactor "Inline Variable"
end, { desc = "CMD enter command mode" })
-- Inline var supports both normal and visual mode

map("n", "<leader>rb", function()
  require("refactoring").refactor "Extract Block"
end, { desc = "CMD enter command mode" })

map("n", "<leader>rbf", function()
  require("refactoring").refactor "Extract Block To File"
end, { desc = "CMD enter command mode" })
-- Extract block supports only normal mode
