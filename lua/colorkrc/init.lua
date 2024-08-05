local utilities = require("colorkrc.utilities.highlight")

local M = {}

---@return { [string]: { fg: string, bg: string, italic?: boolean } }
function M.get_groups()
  local editor_groups = require("colorkrc.groups.editor")
  local code_groups = require("colorkrc.groups.code")

  return vim.tbl_deep_extend("error", editor_groups, code_groups)
end

---@return nil
function M.colorscheme()
  vim.opt.termguicolors = true
  if vim.g.colors_name then
    vim.cmd("hi clear")
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "colorkrc"

  utilities.highlights_groups(M.get_groups())
end

---@return nil
function M.setup()
  return {}
end

return M
