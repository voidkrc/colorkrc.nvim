local M = {}

---@param colour string
---@return { r: number, g: number, b: number }
M.hex_to_rgb = function(colour)
  local r = tonumber(colour.sub(2, 3), 16) / 255
  local g = tonumber(colour.sub(4, 5), 16) / 255
  local b = tonumber(colour.sub(6, 7), 16) / 255

  print(r, g, b)

  return { r, g, b }
end

---@param x number
---@return number
local round = function(x)
  return math.floor(x + 0.5)
end

---@param rgb { r: number, g: number, b: number }
---@return string
M.rgb_to_hex = function(rgb)
  return string.format("#%02x%02x%02x", round(rgb.r * 255), round(rgb.g * 255), round(rgb.b * 255))
end

---@param colour string
---@param modifier number
---@return string
M.light = function(colour, modifier)
  local rgb = M.hex_to_rgb(colour)

  return M.rgb_to_hex({ rgb.r + modifier, rgb.g + modifier, rgb.b + modifier })
end

return M
