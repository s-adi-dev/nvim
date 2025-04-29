local lint = require "lint"

-- List of linters to ignore
local ignore_install = {}

-- Helper to check for value in table
local function table_contains(tbl, val)
  for _, v in ipairs(tbl) do
    if v == val then
      return true
    end
  end
  return false
end

-- Collect all linters (deduplicated)
local seen = {}
local all_linters = {}

for _, linters in pairs(lint.linters_by_ft) do
  for _, linter in ipairs(linters) do
    if
      type(linter) == "string"
      and not table_contains(ignore_install, linter)
      and not seen[linter]
    then
      table.insert(all_linters, linter)
      seen[linter] = true
    end
  end
end

-- Optional: print(all_linters) to debug

require("mason-nvim-lint").setup {
  ensure_installed = all_linters,
  automatic_installation = true,
}
