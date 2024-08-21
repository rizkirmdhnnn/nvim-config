---@type ChadrcConfig
local M = {}
local headers = require "configs.headers"

local function get_header()
  if vim.g.random_header then
    local headerNames = {}
    for name, _ in pairs(headers) do
      table.insert(headerNames, name)
    end
    local randomName = headerNames[math.random(#headerNames)]
    local randomHeader = headers[randomName]
    return randomHeader
  else
    return headers["nvim"]
  end
end

M.base46 = {
  theme = "everforest",
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  lsp = {
    signature = false,
  },
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
  tabufline = {
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs" },
  },
  nvdash = {
    header = get_header(),
    load_on_startup = true,
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰔚  Find All", "Spc f a", "Telescope find_all" },
      { "  Find Todos", "Spc f d", "TodoTelescope" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Themes", "Spc f t", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

return M
