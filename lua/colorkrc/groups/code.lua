local palette = require("colorkrc.utilities.palette")

---@type { [string]: { fg: string, bg: string, link?: string, italic?: boolean, bold?: boolean } }
local code_groups = {

  -- Comments
  Comment = { fg = palette.gray0, bg = palette.none, italic = true },
  ["@comment"] = { link = "Comment" },

  -- Variables
  Variable = { fg = palette.text, bg = palette.none },
  Identifier = { link = "Variable" },
  ["@variable"] = { link = "Variable" },
  ["@variable.member"] = { fg = palette.blue, bg = palette.none },
  ["@variable.builtin"] = { fg = palette.violet, bg = palette.none },
  ["@property"] = { link = "@variable.member" },

  -- Constants
  Constant = { fg = palette.orange, bg = palette.none },
  ["@constant"] = { link = "Constant" },
  ["@constant.builtin"] = { fg = palette.orange, bg = palette.none, bold = true },

  -- Operators
  Operator = { fg = palette.pink, bg = palette.none },
  ["@operator"] = { link = "Operator" },

  -- Types
  Type = { fg = palette.pink_white, bg = palette.none, italic = true },
  ["@type"] = { link = "Type" },
  ["@type.builtin"] = { fg = palette.violet, bg = palette.none, bold = true },

  -- Strings
  String = { fg = palette.green, bg = palette.none },
  ["@string"] = { link = "String" },

  -- Numbers
  Number = { fg = palette.red, bg = palette.none, bold = true },
  ["@number"] = { link = "Number" },

  -- Booleans
  Boolean = { fg = palette.orange, bg = palette.none },
  ["@boolean"] = { link = "Boolean" },

  -- Keywords
  Keyword = { fg = palette.violet, bg = palette.none, bold = true },
  ["@keyword"] = { link = "Keyword" },

  -- Punctuations
  ["@punctuation"] = { fg = palette.text, bg = palette.none },
  --["@punctuation.bracket"] = { link = "@punctuation" },
  --["@punctuation.delimiter"] = { link = "@variable" },
  --["@constructor"] = { fg = palette.purple0, bg = palette.none },

  -- Functions
  Function = { fg = palette.yellow, bg = palette.none, bold = true },
  ["@function"] = { link = "Function" },

  PreProc = { fg = palette.yellow, bg = palette.none },

  -- Diagnostics
  DiagnosticError = { fg = palette.red, bg = palette.none, bold = true },
  DiagnosticWarn = { fg = palette.lightyellow, bg = palette.none },
  DiagnosticInfo = { fg = palette.cyan, bg = palette.none },
}

return code_groups
