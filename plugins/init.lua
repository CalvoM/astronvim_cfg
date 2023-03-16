return {
    {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    },
    {'tjdevries/colorbuddy.nvim', 
        config = false,
        lazy = false,
    },
    { 'preservim/tagbar', lazy=false, event="BufEnter"},
    { "rcarriga/nvim-dap-ui",        requires = { "mfussenegger/nvim-dap" }, lazy=false,},
    { 'Wansmer/treesj',              requires = { 'nvim-treesitter' }, lazy=false },
    { "wfxr/minimap.vim", lazy=false, },
    { "HiPhish/jinja.vim", lazy=false,},
    {
        's1n7ax/nvim-search-and-replace',
        lazy = false,
        config = function() require 'nvim-search-and-replace'.setup() end,
    },
    {'folke/tokyonight.nvim', lazy=false},
    {
  'uloco/bluloco.nvim',
  lazy = false,
  priority = 1000,
  dependencies = { 'rktjmp/lush.nvim' },
  config = function()
    -- your optional config goes here, see below.
  end,
},
    {"savq/melange-nvim", lazy=false},
    { "xiyaowong/nvim-transparent", lazy=false, },
    { 'f-person/git-blame.nvim', lazy=false, },
    { "mfussenegger/nvim-dap", lazy=false},
    ["ray-x/lsp_signature.nvim"] = {
        event = "BufRead",
        lazy = false,
        opt = false,
        config = function()
            require("lsp_signature").setup {
                always_trigger = true,
                timer_interval = 90,
            }
        end,
    },
    ["wakatime/vim-wakatime"] = { event = "BufEnter" },
    { "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        lazy = false,
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end,
    }
}
