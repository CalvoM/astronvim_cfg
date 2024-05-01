return {
  "nvim-neo-tree/neo-tree.nvim",
  opt = {
    window = {
      mappings = {
        ["P"] = { "toggle_preview", config = { use_float = true } },
        ["o"] = "open",
      },
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_hidden = false,
      },
    },
  },
}
