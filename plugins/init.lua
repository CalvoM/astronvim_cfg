return {
    { 'preservim/tagbar' },
    { 'projekt0n/github-nvim-theme', tag = 'v0.0.7' },
    { "AlexvZyl/nordic.nvim" },
    { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } },
    { 'Wansmer/treesj', requires = { 'nvim-treesitter' } },
    { "wfxr/minimap.vim" },
    { "HiPhish/jinja.vim" },
    {
        's1n7ax/nvim-search-and-replace',
        config = function() require 'nvim-search-and-replace'.setup() end,
    },
    { "xiyaowong/nvim-transparent" },
    { 'f-person/git-blame.nvim' },
    { "EdenEast/nightfox.nvim" },
    { "mfussenegger/nvim-dap" },
    { "folke/tokyonight.nvim" },
    { "nvim-lualine/lualine.nvim",
        requires = { { 'kyazdani42/nvim-web-devicons', opt = false }, 'nvim-lua/lsp-status.nvim' },
        module = "lualine",
        opt = false,
        config = require "user.plugins.lualine",
    },
    ["ray-x/lsp_signature.nvim"] = {
        event = "BufRead",
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
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end,
    }
}
