local map = vim.api.nvim_set_keymap

--[[
map in NORMAL mode
key - {string}
command - {string}
opts - {table}
]]
--
function nm(key, command, opts)
  map('n', key, command, opts)
end

--[[
map in INSERT mode
key - {string}
command - {string}
opts - {table}
]]
--
function im(key, command, opts)
  map('i', key, command, opts)
end

--[[
map in VISUAL mode
key - {string}
command - {string}
opts - {table}
]]
--
function vm(key, command, opts)
  map('v', key, command, opts)
end

--[[
map in TERMINAL mode
key - {string}
command - {string}
opts - {table}
]]
--
function tm(key, command, opts)
  map('t', key, command, opts)
end

