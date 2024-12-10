vim.api.nvim_set_hl(0, "CustomIBL", { fg = "#444444" })

require("ibl").setup({
  scope = { enabled = false },
  --indent = {
  --  highlight = {
  --    "CustomIBL",
  --  }
  --}
})
