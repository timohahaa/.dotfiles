require("bufferline").setup({
    options = {
      diagnostics = "nvim_lsp",
      offsets = {
        {
          filetype = "NvimTree",
          text = "====> File tree <====",
          text_align = "center",
          separator = true,
        }
      },
      separator_style = "thin",
      numbers = "ordinal",
      -- hover = {
      --     enabled = true,
      --     delay = 200,
      --     reveal = {'close'}
      -- },
    }
  })