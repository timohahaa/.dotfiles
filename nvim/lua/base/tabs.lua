local opt = vim.opt
local g = vim.g

-- ALSO SEE autocmd.lua !!!
-- set tab width dynamicaly for certain filetypes
-- for ex. .lua files will have shiftwidth and tabstop = 2 instead of 4


-- when using <CR> to indent
opt.tabstop = 4
-- when using "<" or ">" to indent
opt.shiftwidth = 4

opt.smartindent = true
opt.expandtab = true
