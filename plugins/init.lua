return {
    { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } },
    { "vim-airline/vim-airline-themes" },
    { "wfxr/minimap.vim" },
    { 'f-person/git-blame.nvim' },
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
