
return {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    dependencies = {
        { 'catppuccin/nvim', name = "catppuccin", lazy = true }
    },
    config = function()
        vim.cmd.colorscheme('tokyonight')
    end
}
