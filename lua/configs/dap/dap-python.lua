local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
require("dap-python").setup(path)

local map = vim.keymap.set

-- Dap keybindings for Python
map(
  "n",
  "<leader>db",
  "<cmd> DapToggleBreakpoint <CR>",
  { desc = "Toggle DAP Breakpoint" }
)
map(
  "n",
  "<leader>dr",
  "<cmd> DapContinue <CR>",
  { desc = "Start or continue DAP" }
)
map(
  "n",
  "<leader>du",
  "<cmd>lua require('dapui').toggle()<CR>",
  { desc = "Toggle DAP UI" }
)
map("n", "<leader>dpt", function()
  require("dap-python").test_method()
end, { desc = "Run DAP Python test method" })
