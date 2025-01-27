-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

return {

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "tpope/vim-fugitive",
  },
  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },
  { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" }, lazy = false },
  { "HiPhish/jinja.vim", lazy = false },
  {
    "s1n7ax/nvim-search-and-replace",
    lazy = false,
    config = function()
      require("nvim-search-and-replace").setup()
    end,
  },
  { "f-person/git-blame.nvim", lazy = false },
  { "mfussenegger/nvim-dap", lazy = false, config = function() end },
  ["ray-x/lsp_signature.nvim"] = {
    event = "BufRead",
    lazy = false,
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
    lazy = false,
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
    lazy = false,
  },
  {
    "iamcco/markdown-preview.nvim",
    lazy = false,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
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
    "NStefan002/screenkey.nvim",
    lazy = false,
    version = "*", -- or branch = "dev", to use the latest commit
  },
}
