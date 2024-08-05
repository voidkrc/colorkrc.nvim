local palette = require("colorkrc.utilities.palette")

---@type { [string]: { fg: string, bg: string, link?: string, italic?: boolean, bold?: boolean } }
local code_groups = {

  -- Comments
  Comment = { fg = palette.gray0, bg = palette.none, italic = true },
  ["@comment"] = { link = "Comment" },
  ["@lsp.type.comment"] = { link = "@comment" },

  -- Variables
  Variable = { fg = palette.text, bg = palette.none },
  Identifier = { link = "Variable" },
  ["@variable"] = { link = "Variable" },
  ["@variable.member"] = { fg = palette.blue0, bg = palette.none },
  ["@lsp.type.variable"] = { link = "@variable" },
  ["@lsp.type.property"] = { link = "@variable.member" },

  -- Constants
  Constant = { fg = palette.orange0, bg = palette.none },
  ["@constant"] = { link = "Constant" },

  -- Operators
  Operator = { fg = palette.red0, bg = palette.none },
  ["@operator"] = { link = "Operator" },
  ["@lsp.type.operator"] = { link = "@operator" },

  -- Types
  Type = { fg = palette.violet, bg = palette.none, italic = true },
  ["@type"] = { link = "Type" },
  ["@type.builtin"] = { fg = palette.violet, bg = palette.none, italic = true, bold = true },
  ["@type.definition"] = { fg = palette.pink0, bg = palette.none, bold = true, italic = true },
  ["@lsp.type.builtin"] = { link = "@type.builtin" },
  ["@lsp.type.type"] = { link = "@type" },
  ["@lsp.type.enum"] = { link = "@type.definition" },
  ["@lsp.type.class"] = { link = "@type.definition" },
  ["@lsp.type.enumMember"] = { fg = palette.blue0, bg = palette.none },

  -- Strings
  String = { fg = palette.green, bg = palette.none },
  ["@string"] = { link = "String" },
  ["@string.escape"] = { fg = palette.red, bg = palette.none },
  ["@lsp.type.string"] = { link = "@string" },

  -- Numbers
  Number = { fg = palette.red, bg = palette.none, bold = true },
  ["@number"] = { link = "Number" },
  ["@lsp.type.number"] = { link = "@number" },

  -- Booleans
  Boolean = { fg = palette.orange0, bg = palette.none },
  ["@boolean"] = { link = "Boolean" },

  -- Keywords
  Keyword = { fg = palette.violet, bg = palette.none, bold = true },
  ["@keyword"] = { link = "Keyword" },
  ["@lsp.type.keyword"] = { link = "@keyword" },

  -- Punctuations
  ["@punctuation"] = { fg = palette.text, bg = palette.none },
  ["@punctuation.bracket"] = { link = "@punctuation" },
  ["@punctuation.delimiter"] = { link = "@variable" },
  ["@constructor"] = { fg = palette.purple0, bg = palette.none },

  -- Functions
  Function = { fg = palette.yellow1, bg = palette.none },
  ["@function"] = { link = "Function" },
  ["@function.builtin"] = { fg = palette.violet, bg = palette.none },
  ["@lsp.type.function"] = { link = "@function" },
  ["@lsp.type.method"] = { link = "@function" },
}

return code_groups
