local M = {}

---@param groups { [string]: { fg: string, bg: string, italic?: boolean } }
M.highlights_groups = function(groups)
  for group_name, highlight in pairs(groups) do
    vim.api.nvim_set_hl(0, group_name, highlight)
  end
end

return M
