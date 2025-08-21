local transparency = false

return {
    {
        'projekt0n/github-nvim-theme',
        lazy = false,
        name = 'github-theme',
        init = function()
            vim.cmd.colorscheme("github_dark_dimmed")
        end
    }
}

-- return {
--     {
--         'marko-cerovac/material.nvim',
--         lazy = false,
--         priority = 1000,
--         main = "material",
--         config = true,
--         opts = {
--             disable = {
--                 -- Overrides the fat cursor setting
--                 colored_cursor = true,
--                 background = transparency,
--             },
--         },
--         init = function()
--             if transparency then
--                 vim.g.material_style = "palenight"
--             else
--                 vim.g.material_style = "deep ocean"
--             end
--         end
--     },
--     {
--         'rose-pine/neovim',
--         lazy = false,
--         main = "rose-pine",
--         config = true,
--         opts = {
--             styles = {
--                 italic = false,
--                 transparency = transparency,
--             },
--         }
--     },
--     {
--         'folke/tokyonight.nvim',
--         lazy = false,
--         config = true,
--         opts = {
--             style = 'night',
--             transparent = transparency
--         },
--         init = function()
--             vim.cmd.colorscheme("tokyonight")
--         end
--     },
--     {
--         'Mofiqul/vscode.nvim',
--         lazy = false,
--         config = true,
--     },
-- }
