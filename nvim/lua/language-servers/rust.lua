local lspconfig = require("lspconfig")
local util = require("lspconfig/util")
require('language-servers/common')

lspconfig.rust_analyzer.setup({
  -- filetypes = { "rs" },
  -- root_dir = util.root_pattern("Cargo.toml"),
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    rust_analyzer = {
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = {
        buildScripts = {
          enable = true,
        },
      },
      procMacro = {
        enable = true,
      }
    },
  },
})
