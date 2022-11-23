-- set vim options here (vim.<first_key>.<second_key> =  value)
return {
    opt = {
        -- set to true or false etc.
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
        smartcase = true,
        incsearch = true,
        hlsearch = true,
        splitbelow = true,
        splitright = true,
        tabstop = 4,
        shiftwidth = 4,
        expandtab = true,
        backspace = "indent,eol,start",
    },
    g = {
        termguicolors = true,
        mapleader = " ", -- sets vim.g.mapleader
        autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
        cmp_enabled = true, -- enable completion at start
        autopairs_enabled = true, -- enable autopairs at start
        diagnostics_enabled = true, -- enable diagnostics at start
        status_diagnostics_enabled = true, -- enable diagnostics in statusline
        icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
        aurora_italic = 1,
        aurora_bold = 1,
        aurora_darker = 1,
        aurora_transparent = 1,
        gitblame_message_when_not_committed = "Buda, bado hujacommit?!!!",
        minimap_width = 10,
        minimap_highlight_search = 1,
        minimap_git_colors = 1,
        minimap_search_color_priority = 150,
        -- transparent_enabled = true,
    },
}

-- If you need more control, you can use the function()...end notation
-- options = function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end,
