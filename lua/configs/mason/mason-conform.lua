local conform = require "conform"

local ignore_install = {}

local function table_contains(tbl, val)
  for _, v in ipairs(tbl) do
    if v == val then
      return true
    end
  end
  return false
end

local seen = {}
local all_formatters = {}

for _, formatters in pairs(conform.formatters_by_ft) do
  for _, formatter in ipairs(formatters) do
    if
      type(formatter) == "string"
      and not table_contains(ignore_install, formatter)
      and not seen[formatter]
    then
      table.insert(all_formatters, formatter)
      seen[formatter] = true
    end
  end
end

require("mason-conform").setup {
  ensure_installed = all_formatters,
  automatic_installation = true,
}
