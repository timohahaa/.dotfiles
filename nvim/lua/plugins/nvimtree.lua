require("nvim-tree").setup({
  disable_netrw = true,
  hijack_cursor = true,
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  filters = {
    dotfiles = false,
    git_ignored = false,
  },
  view = {
    side = "left",
    width = {},
    preserve_window_proportions = true,
  },
  renderer = {
    indent_markers = {
      enable = true,
    },
  },
})

