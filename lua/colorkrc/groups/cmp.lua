local palette = require("colorkrc.utilities.palette")

---@type { [string]: { fg: string, bg: string, link?: string, italic?: boolean, strikethrough?: boolean } }
local cmp_groups = {
  CmpItemAbbrDeprecated = { fg = palette.gray1, bg = palette.none, strikethrough = true },
  CmpItemAbbrMatch = {},
  CmpItemAbbrMatchFuzzy = {},
  CmpItemKindVariable = { link = "Variable" },
  CmpItemKindInterface = { link = "Type" },
  CmpItemKindText = { link = "CmpItemKindVariable" },
  CmpItemKindFunction = { link = "Function" },
  CmpItemKindMethod = { link = "CmpItemKindFunction" },
  CmpItemKindKeyword = { link = "Keyword" },
  CmpItemKindProperty = { link = "@property" },
  CmpItemKindUnit = { link = "Variable" },
}

return cmp_groups
