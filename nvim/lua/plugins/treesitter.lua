local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = {
    "go",
    "gomod",
    "gowork",
    "python",
    "dockerfile",
    "proto",
    "c",
    "bash",
    "json",
    "html",
    "css",
    "yaml",
    "lua",
    "sql",
    "markdown",
    "markdown_inline",
    "rust",
  },
  sync_install = false,
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
})

