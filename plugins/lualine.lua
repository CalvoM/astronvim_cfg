return function()
    require("lualine").setup {
        options = {
            theme = "palenight",
        },
        sections = {
            lualine_c = { { "filename", path = 2 }, "searchcount" },
            lualine_y = {
                "progress",
                function() return require("lsp-status").status() end,
            },
        },
    }
end
