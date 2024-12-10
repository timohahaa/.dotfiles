local opt = vim.opt
local g = vim.g

-- ignore register
-- searching for "foobar" and "FOOBAR" will give same results
opt.ignorecase = true

-- dont ignore case, if where are mixed registers
-- searching for "Foobar" will find only "Foobar", and not "FOOBAR"/"foobar"
opt.smartcase = true

-- highlight search
opt.showmatch = true
