return {
    "nvim-lualine/lualine.nvim",
    requires = { { 'kyazdani42/nvim-web-devicons', opt = false }, 'nvim-lua/lsp-status.nvim' },
    module = "lualine",
    opt = false,
    config = function()
    local conditions = {
        buffer_not_empty = function()
            return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
        end,
        hide_in_width = function()
            return vim.fn.winwidth(0) > 80
        end,
        check_git_workspace = function()
            local filepath = vim.fn.expand('%:p:h')
            local gitdir = vim.fn.finddir('.git', filepath .. ';')
            return gitdir and #gitdir > 0 and #gitdir < #filepath
        end,
    }
    local colors = {
        bg = '#202328',
        fg = '#bbc2cf',
        yellow = '#ECBE7B',
        cyan = '#008080',
        darkblue = '#081633',
        green = '#98be65',
        orange = '#FF8800',
        violet = '#a9a1e1',
        magenta = '#c678dd',
        red = '#ec5f67',
        grey = '#303030',
        blue = '#80a0ff',
        black = '#080808',
        white = '#c6c6c6',
    }
    require('lualine').setup {
        options = {
            theme = 'nordic',
            component_separators = '|',
            -- section_separators = { left = ' ', right = ' ' },
        },
        sections = {
            lualine_a = {
                -- mode component
                {
                    'mode',
                    padding = { right = 1, left = 1 },
                },
            },
            lualine_b = {
                {
                    'branch',
                    icon = '',
                    color = { gui = 'bold' },
                },
                {
                    'diff',
                    symbols = { added = ' ', modified = '柳 ', removed = ' ' },
                    diff_color = {
                        added = { fg = '#00FF00' },
                        modified = { fg = colors.orange },
                        removed = { fg = colors.red },
                    },
                    cond = conditions.hide_in_width,
                    color = { gui = 'bold' },
                },
                {
                    'diagnostics',
                    sources = { 'nvim_diagnostic' },
                    symbols = { error = ' ', warn = ' ', info = ' ' },
                    diagnostics_color = {
                        color_error = { fg = colors.red },
                        color_warn = { fg = colors.yellow },
                        color_info = { fg = colors.cyan },
                    },
                    color = { gui = 'bold' },
                },
            },
            lualine_c = {
                { 'filename',
                    path = 1,
                    cond = conditions.buffer_not_empty,
                    icon = '  ',
                    padding = { right = 2, left = 2 },
                },
                {
                    'searchcount',
                    icon = '',
                    padding = { right = 1, left = 1 },

                },
            },
            lualine_x = {
                'filetype',
            },
            lualine_y = {
                'progress',
                { function()
                    local msg = 'No Active Lsp'
                    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                    local clients = vim.lsp.get_active_clients()
                    if next(clients) == nil then
                        return msg
                    end
                    for _, client in ipairs(clients) do
                        local filetypes = client.config.filetypes
                        if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                            return client.name
                        end
                    end
                    return msg
                end,
                    icon = ' LSP:',
                    padding = { right = 2, left = 2 },
                },
            },
        },
    }
end
}
