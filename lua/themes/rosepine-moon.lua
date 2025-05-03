---@class Base46Table
---Credits to original port author: [BK](https://github.com/BrunoKrugel)

local M = {}

M.base_30 = {
  white = "#e0def4",
  darker_black = "#1e1d2e",
  black = "#232136", -- nvim bg
  black2 = "#2a273f",
  one_bg = "#2e2b45",
  one_bg2 = "#393552",
  one_bg3 = "#44415a",
  grey = "#6e6a86",
  grey_fg = "#908caa",
  grey_fg2 = "#9a95b5",
  light_grey = "#b3b0c9",
  red = "#eb6f92",
  baby_pink = "#f6c177",
  pink = "#ea9a97",
  line = "#393552", -- for lines like vertsplit
  green = "#3e8fb0",
  vibrant_green = "#4ec9b0",
  nord_blue = "#9ccfd8",
  blue = "#31748f",
  yellow = "#f6c177",
  sun = "#f9e2af",
  purple = "#c4a7e7",
  dark_purple = "#a18aca",
  teal = "#9ccfd8",
  orange = "#f6c177",
  cyan = "#9ccfd8",
  statusline_bg = "#232136",
  lightbg = "#2a283e",
  pmenu_bg = "#3e8fb0",
  folder_bg = "#3e8fb0",
  lavender = "#c4a7e7",
}

M.base_16 = {
  base00 = "#232136",
  base01 = "#2a273f",
  base02 = "#393552",
  base03 = "#44415a",
  base04 = "#56526e",
  base05 = "#e0def4",
  base06 = "#f0f0f3",
  base07 = "#e0def4",
  base08 = "#eb6f92",
  base09 = "#f6c177",
  base0A = "#f6c177",
  base0B = "#3e8fb0",
  base0C = "#9ccfd8",
  base0D = "#31748f",
  base0E = "#c4a7e7",
  base0F = "#eb6f92",
}

M.polish_hl = {
  treesitter = {
    ["@variable.builtin"] = { fg = M.base_30.red },
    ["@function.builtin"] = { fg = M.base_30.cyan },
    ["Function"] = { fg = M.base_30.blue },
    ["@function"] = { fg = M.base_30.blue },
    ["@keyword"] = { fg = M.base_30.pink },
    ["@property"] = { fg = M.base_30.cyan },
    ["@type.builtin"] = { fg = M.base_30.purple },
    ["@variable"] = { fg = M.base_30.sun },
  },
}

M.type = "dark"

return M
