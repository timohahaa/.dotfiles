-- TODO: dont mix vimscript with neovim api :)

-- configure filetypes, than need to have a different indent
vim.cmd([[augroup TabGroup
autocmd FileType lua,yaml,vue,html,css,javascriptreact,typescriptreact :setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup end
]])

-- lsp format on save
local fmtGroup = vim.api.nvim_create_augroup('fmtGroup', { clear = true })
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  group = fmtGroup,
  callback = function()
    vim.lsp.buf.format({ async = true })
  end,
})
