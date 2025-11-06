return {
  {
    "folke/trouble.nvim",
    cmd = { "Trouble" },
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },
  { "f-person/git-blame.nvim", cmd = { "GitBlameToggle", "GitBlameEnable" } },
  { "wakatime/vim-wakatime", event = "VeryLazy" },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    cmd = { "Trouble", "TodoTelescope", "Trouble todo" },
    config = function()
      require("todo-comments").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
  },
  {
    "nvzone/typr",
    lazy = true,
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
  },
}
