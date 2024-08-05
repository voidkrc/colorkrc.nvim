local palette = require("colorkrc.utilities.palette")

---@type { [string]: { fg: string, bg: string, link?: string, italic?: boolean } }
local editor_groups = {
  Normal = { fg = palette.text, bg = palette.none },
  NormalFloat = { link = "Normal" },
  Visual = { bg = palette.blue },
  VisualLineMode = { link = "Visual" },
  VisualMode = { link = "Visual" },
  Special = { fg = palette.purple, bg = palette.none, bold = true },
  Whitespace = { fg = palette.purple, bg = palette.none },
  Include = { fg = palette.cyan, bg = palette.none },
  Tag = { fg = palette.yellow, bg = palette.none },
  Todo = { fg = palette.yellow, bg = palette.yellow },
  Typedef = { fg = palette.yellow, bg = palette.none },

  Cursor = { fg = palette.none, bg = palette.text },
  CursorLine = { fg = palette.none, bg = palette.gray1 },

  LineNr = { fg = palette.gray1, bg = palette.none },
  StatusLine = { fg = palette.gray1, bg = palette.blue },

  PMenu = { fg = palette.gray0, bg = palette.gray1 },
  PMenuSbar = { fg = palette.none, bg = palette.none },
  PMenuSel = { fg = palette.gray1, bg = palette.yellow },
  PMenuThumb = { fg = palette.none, bg = palette.none },
}

return editor_groups
