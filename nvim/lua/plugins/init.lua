local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -------------------------------
  ------------- LSP -------------
  -------------------------------
  {
    "williamboman/mason.nvim",
    lazy = false,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      require("plugins/lspconf")
    end,
  },

  -------------------------------
  ------- autocompletion --------
  -------------------------------
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    config = function()
      require("plugins/autocomp")
    end,
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "hrsh7th/cmp-buffer",
  },
  {
    "hrsh7th/cmp-path",
  },
  {
    "saadparwaiz1/cmp_luasnip",
  },
  {
    "L3MON4D3/LuaSnip",
    lazy = false,
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode") --.lazy_load()
    end
  },
  {
    "windwp/nvim-autopairs",
    lazy = false,
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require("nvim-ts-autotag").setup({})
    end,
    lazy = false,
  },

  --------------------------------
  -- treesitter and colorscheme --
  --------------------------------
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("plugins/treesitter")
    end,
  },
  {
    'marko-cerovac/material.nvim',
    lazy = false,
    priority = 100000,
    config = function()
      -- this loads other colorschemes
      -- probably should redo this
      require("plugins/colorscheme")
    end
  },
  { "catppuccin/nvim",  name = "catppuccin" },
  "rebelot/kanagawa.nvim",
  "fynnfluegge/monet.nvim",
  "folke/tokyonight.nvim",
  { "rose-pine/neovim", name = "rose-pine" },
  "EdenEast/nightfox.nvim",
  'aliqyan-21/darkvoid.nvim',
  "0xstepit/flow.nvim",
  'bettervim/yugen.nvim',
  "love-pengy/lillilac.nvim",
  'marko-cerovac/material.nvim',
  "biisal/blackhole",
  "forest-nvim/sequoia.nvim",
  "devoc09/sphere.vim",
  "74k1/yueye.nvim",
  -------------------------------------------------------------
  -- ui stuff: file explorer, lualine, tabs, highlights, etc --
  -------------------------------------------------------------
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons", },
    config = function()
      require("plugins/nvimtree")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
    config = function()
      require("plugins/lualine")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("plugins/bufferline")
    end,
  },
  --  {
  --    "rcarriga/nvim-notify",
  --    lazy = false,
  --    priority = 100,
  --    config = function()
  --      require("notify").setup({
  --        stages = "static",
  --        timeout = 1000,
  --        icons = {
  --          ERROR = "",
  --          WARN = "",
  --          INFO = "",
  --          DEBUG = "",
  --          TRACE = "✎",
  --        },
  --      })
  --
  --      -- Override vim.notify after setup
  --      vim.notify = require("notify")
  --    end,
  --  },
  -------------------------
  -- other usefull stuff --
  -------------------------
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false,
    config = function()
      require('plugins/blankline')
    end,
  },
  {
    'brenoprata10/nvim-highlight-colors',
    lazy = false,
    config = function()
      require('nvim-highlight-colors').setup({})
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    config = function()
      require("gitsigns").setup({})
    end,
  },
  {
    'wfxr/protobuf.vim',
  },
  {
    'nvim-telescope/telescope.nvim',
    lazy = false,
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      "BurntSushi/ripgrep",
      'nvim-telescope/telescope-fzf-native.nvim',
    },
    config = function()
      require('plugins/telescope')
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('plugins/comment')
    end
  },
  {
    'echasnovski/mini.move',
    version = false,
    config = function()
      require('plugins/mini-move')
    end
  },
})
