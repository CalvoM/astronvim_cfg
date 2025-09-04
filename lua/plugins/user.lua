return {
  {
    "folke/trouble.nvim",
    lazy = true,
    event = "BufEnter",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },
  { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" }, lazy = true },
  { "f-person/git-blame.nvim", lazy = true, event = "BufEnter" },
  { "mfussenegger/nvim-dap", lazy = true, config = function() end },
  ["ray-x/lsp_signature.nvim"] = {
    event = "BufRead",
    lazy = true,
    opt = false,
    config = function()
      require("lsp_signature").setup({
        always_trigger = true,
        timer_interval = 90,
      })
    end,
  },
  { "wakatime/vim-wakatime", event = "BufEnter", lazy = true },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    lazy = true,
    event = "BufEnter",
    config = function()
      require("todo-comments").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },
  {
    "kosayoda/nvim-lightbulb",
    dependencies = { "antoinemadec/FixCursorHold.nvim" },
    lazy = true,
    event = "BufEnter",
  },
  {
    "iamcco/markdown-preview.nvim",
    lazy = true,
    ft = "md",
  },
  { "neoclide/coc.nvim", branch = "release" },
  {
    "adelarsq/image_preview.nvim",
    event = "VeryLazy",
    config = function()
      require("image_preview").setup()
    end,
  },
  {
    "rest-nvim/rest.nvim",
    lazy = true,
    ft = "http",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
        table.insert(opts.ensure_installed, "http")
      end,
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    lazy = true,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = true },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    lazy = true,
    ft = "md",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type rendefr.md.UserConfig
    opts = {},
  },
  {
    "nvzone/typr",
    lazy = true,
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
  },
  {
    "SmiteshP/nvim-navic",
    dependencies = "neovim/nvim-lspconfig",
    event = "BufEnter",
    lazy = false,
  },
}
