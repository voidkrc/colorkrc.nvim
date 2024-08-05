local palette = require("colorkrc.utilities.palette")

local oil_groups = {
  OilDir = { fg = palette.orange, bg = palette.none },
  OilDirIcon = {},
  OilSocket = {},
  OilLinkTarget = {},
  OilCreate = {},
  OilDelete = {},
  OilMove = {},
  OilCopy = {},
  OilChange = {},
  OilRestore = {},
  OilPurge = {},
  OilTrash = {},
  OilTrashSourcePath = {},
  --oilId = {},
  OilFile = { fg = palette.blue, bg = palette.none },
}

return oil_groups
