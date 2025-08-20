-- Create this file in your Neovim config directory (e.g., ~/.config/nvim/lua/custom/autocmds.lua)
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Create a new autocommand group for TypeScript organize imports
local ts_organize_imports_group =
  augroup("TypeScriptOrganizeImports", { clear = true })

-- Create autocommand for organize imports on save for TypeScript files
autocmd("BufWritePre", {
  group = ts_organize_imports_group,
  pattern = { "*.ts", "*.tsx" },
  callback = function()
    local params = {
      command = "_typescript.organizeImports",
      arguments = { vim.api.nvim_buf_get_name(0) },
      title = "Organize Imports",
    }

    vim.lsp.buf_request_sync(0, "workspace/executeCommand", params, 1000)
  end,
  desc = "Organize imports on save for TypeScript files",
})

-- You can also add a user command to manually trigger organize imports
vim.api.nvim_create_user_command("OrganizeImports", function()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
    title = "Organize Imports",
  }

  local result =
    vim.lsp.buf_request_sync(0, "workspace/executeCommand", params, 1000)
  if result then
    vim.notify("Organized imports successfully", vim.log.levels.INFO)
  else
    vim.notify("Failed to organize imports", vim.log.levels.ERROR)
  end
end, { desc = "Organize TypeScript imports" })
