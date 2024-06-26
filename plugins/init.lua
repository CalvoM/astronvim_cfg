return {
    {
        "folke/trouble.nvim",
        lazy = false,
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    },
    { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" }, lazy = false, },
    { 'Wansmer/treesj',       dependencies = { 'nvim-treesitter' },       lazy = false },
    { "HiPhish/jinja.vim",    lazy = false, },
    {
        's1n7ax/nvim-search-and-replace',
        lazy = false,
        config = function() require 'nvim-search-and-replace'.setup() end,
    },
    {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
},
{
  "olimorris/onedarkpro.nvim",
  priority = 1000 -- Ensure it loads first
},
    { "xiyaowong/nvim-transparent", lazy = true, },
    { 'f-person/git-blame.nvim',    lazy = false, },
    { "mfussenegger/nvim-dap",      lazy = false },
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
    { "wakatime/vim-wakatime",        event = "BufEnter", lazy = true },
    { "IndianBoy42/tree-sitter-just", lazy = false },
    {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        lazy = false,
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end,
    },
    {
        "folke/noice.nvim",
        config = function()
            require("noice").setup({
                -- add any options here
            })
        end,
        requires = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        },
        lazy = false,
    },
    {
        'kosayoda/nvim-lightbulb',
        dependencies = { 'antoinemadec/FixCursorHold.nvim' },
        lazy = false,
    },
    {
        'pwntester/octo.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require "octo".setup()
        end
    },
    {
        "klen/nvim-test",
        lazy = false,
        config = function()
            require('nvim-test').setup()
        end
    },
    {
        'iamcco/markdown-preview.nvim',
        lazy = false,
    },
    {
        'linux-cultist/venv-selector.nvim',
  dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
  opts = {
    -- Your options go here
    -- name = "venv",
    -- auto_refresh = false
    parent = 1,
    auto_refresh = true,
    name = {"venv", ".venv"}
  },
  event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { '<leader>vs', '<cmd>VenvSelect<cr>' },
    -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
    { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
  },
    }
}
