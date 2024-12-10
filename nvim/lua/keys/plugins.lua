require('keys/alias')

local opts = { noremap = true, silent = true }

-- nvim-tree
nm("<leader>t", ":NvimTreeFocus<CR>", opts)
nm("<leader>T", ":NvimTreeClose<CR>", opts)

-- bufferline
nm("b1", ":BufferLineGoToBuffer 1<CR>", opts)
nm("b2", ":BufferLineGoToBuffer 2<CR>", opts)
nm("b3", ":BufferLineGoToBuffer 3<CR>", opts)
nm("b4", ":BufferLineGoToBuffer 4<CR>", opts)
nm("b5", ":BufferLineGoToBuffer 5<CR>", opts)
nm("b6", ":BufferLineGoToBuffer 6<CR>", opts)
nm("b7", ":BufferLineGoToBuffer 7<CR>", opts)
nm("b8", ":BufferLineGoToBuffer 8<CR>", opts)
nm("b9", ":BufferLineGoToBuffer 9<CR>", opts)
nm("<A-n>", ":BufferLineCycleNext<CR>", opts)
nm("<A-p>", ":BufferLineCyclePrev<CR>", opts)
nm("<A-x>", "::bp<bar>sp<bar>bn<bar>bd<CR>", opts)

-- telescope
-- local builtin = require("telescope.builtin")
nm("<leader>ff", ":Telescope find_files<CR>", opts)
nm("<leader>fs", ":Telescope grep_string<CR>", opts)
nm("<leader>lg", ":Telescope live_grep<CR>", opts)
nm("<leader>cs", ":Telescope colorscheme<CR>", opts)
