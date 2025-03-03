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
    },
    {
        'rose-pine/neovim',
        lazy = false,
        main = "rose-pine",
        config = true,
        opts = {
            styles = {
                italic = false,
                transparency = false,
            },
        }
    },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        config = true,
        opts = {
            style = 'night'
        },
    },
    { "savq/melange-nvim", lazy = false, },
    {
        "Tsuzat/NeoSolarized.nvim",
        lazy = false,

        main = "NeoSolarized",
        config = true,
        opts = {
            transparent = false
        }
    }
}
