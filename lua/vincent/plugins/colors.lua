return {
    {
        'marko-cerovac/material.nvim',
        lazy = false,
        priority = 1000,
        main = "material",
        config = true,
        opts = {
            disable = {
                -- Overrides the fat cursor setting
                colored_cursor = true
            }
        },
        init = function()
            vim.g.material_style = "deep ocean"
            vim.cmd.colorscheme("material")
        end
    }
}

-- return {
--     'olivercederborg/poimandres.nvim',
--     name = 'poimandres',
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require('poimandres').setup({})
--     end,
--     init = function()
--         vim.cmd("colorscheme poimandres")
--     end
-- }
-- return {
--     'folke/tokyonight.nvim',
--     lazy = false,
--     priority = 1000,
--     config = true,
--     opts = {
--         style = 'night'
--     },
--     init = function()
--         vim.cmd("colorscheme tokyonight")
--     end,
-- }

-- return {
--     {
--         'rose-pine/neovim',
--         lazy = false,
--         priority = 1000,
--         main = "rose-pine",
--         config = true,
--         opts = {
--             styles = {
--                 italic = false,
--                 transparency = false,
--             },
--         },
--         init = function()
--             vim.cmd.colorscheme("rose-pine")
--         end
--     }
-- }
