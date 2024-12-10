require('keys/alias')

local opts = { noremap = true, silent = true }

-- basic :)
vim.g.mapleader = " "

nm("<leader>nh", ":nohl<CR>", opts)
nm("<leader>lr", ":LspRestart<CR>", opts)
