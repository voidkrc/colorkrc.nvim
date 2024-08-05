local palette = require("colorkrc.utilities.palette")

---@type { [string]: { fg: string, bg: string, link?: string, italic?: boolean } }
local editor_groups = {
  Normal = { fg = palette.text, bg = palette.none },
  NormalFloat = { link = "Normal" },
  Visual = { bg = palette.blue0 },
  VisualLineMode = { link = "Visual" },
  VisualMode = { link = "Visual" },

  LineNr = { fg = palette.gray1, bg = palette.none },

  PMenu = { fg = palette.gray0, bg = palette.gray1 },
  PMenuSbar = { bg = palette.none },
  PMenuSel = { fg = palette.gray1, bg = palette.yellow0 },
  PMenuThumb = { bg = palette.none },
}

return editor_groups
