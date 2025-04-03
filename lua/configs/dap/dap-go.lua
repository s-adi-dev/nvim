require("dap-go").setup()

local map = vim.keymap.set

-- Dap keybindings for Go
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
map("n", "<leader>dgt", function()
  require("dap-go").debug_test()
end, { desc = "Run DAP Go test method" })
