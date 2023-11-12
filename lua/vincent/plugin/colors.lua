
return {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    dependencies = {
        { 'catppuccin/nvim', name = "catppuccin", lazy = true },
        { "savq/melange-nvim", name = 'melange', lazy = true },
        { "morhetz/gruvbox", name = 'gruvbox', lazy = true },
        { "rose-pine/neovim", name = 'rose-pine', lazy = true },
    },
    config = function()
        vim.cmd.colorscheme('rose-pine-moon')
    end
}
