return {
    { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } },
    { "vim-airline/vim-airline-themes" },
    { "wfxr/minimap.vim" },
    { 'f-person/git-blame.nvim' },
    { "mfussenegger/nvim-dap" },
    { "folke/tokyonight.nvim" },
    { "nvim-lualine/lualine.nvim",
        requires = { 'kyazdani42/nvim-web-devicons', opt = false },
        opt = false,
        config = function()
            require("lualine").setup {
                options = {
                    theme = "aurora",
                }
            }
        end,
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
    ["neo-tree"] = {
        window = {
            mappings = {
                ["p"] = { "toggle_preview", config = { use_float = true } },
                ["O"] = "open",
            },
        },
        filesystem = {
            filtered_items = {
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_hidden = false
            },
        },
    },
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
