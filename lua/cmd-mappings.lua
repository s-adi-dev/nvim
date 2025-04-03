local map = vim.keymap.set

-- Tmux navigation mappings
map(
  "n",
  "<C-h>",
  "<cmd>TmuxNavigateLeft<CR>",
  { desc = "Window left", remap = true }
)
map(
  "n",
  "<C-l>",
  "<cmd>TmuxNavigateRight<CR>",
  { desc = "Window right", remap = true }
)
map(
  "n",
  "<C-j>",
  "<cmd>TmuxNavigateDown<CR>",
  { desc = "Window down", remap = true }
)
map(
  "n",
  "<C-k>",
  "<cmd>TmuxNavigateUp<CR>",
  { desc = "Window up", remap = true }
)

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("n", "<M-/>", "gbc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })
map("v", "<M-/>", "gb", { desc = "toggle comment", remap = true })

-- Rest
vim.api.nvim_set_keymap(
  "n",
  "<leader>rr",
  "<cmd>Rest run<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>rl",
  "<cmd>Rest last<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>rp",
  "<cmd>Rest run true<CR>",
  { noremap = true, silent = true }
)
