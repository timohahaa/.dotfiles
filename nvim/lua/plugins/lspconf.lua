require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "gopls",
    "pyright",
    "dockerls",
    "docker_compose_language_service",
    "rust_analyzer",
    "tsserver",
    "jsonls",
    "eslint",
    "html",
    "cssls",
    "volar",
    "clangd",
  },
  automatic_installation = true,
})

capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Capabilities required for the visualstudio lsps (css, html, etc)
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('language-servers/lua')
require('language-servers/golang')
require('language-servers/python')
require('language-servers/docker')
require('language-servers/rust')
require('language-servers/c-cpp')
require('language-servers/typescript')
require('language-servers/json')
require('language-servers/html')
require('language-servers/css')
require('language-servers/other')
