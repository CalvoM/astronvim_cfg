return {
    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    },
    {
        'tjdevries/colorbuddy.nvim',
        config = false,
        lazy = false,
    },
    { 'preservim/tagbar',     lazy = false,                               event = "BufEnter" },
    { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" }, lazy = false, },
    { 'Wansmer/treesj',       dependencies = { 'nvim-treesitter' },       lazy = false },
    { "wfxr/minimap.vim",     lazy = false, },
    { "HiPhish/jinja.vim",    lazy = false, },
    {
        's1n7ax/nvim-search-and-replace',
        lazy = false,
        config = function() require 'nvim-search-and-replace'.setup() end,
    },
    { 'kartikp10/noctis.nvim',      dependencies = { 'rktjmp/lush.nvim' }, lazy = false },
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
    { 'luisiacc/gruvbox-baby', },
    { "catppuccin/nvim",              as = "catppuccin",  lazy = false },
    { "ellisonleao/gruvbox.nvim" },
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
}
