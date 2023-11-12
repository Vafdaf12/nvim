return {
    'folke/tokyonight.nvim',
    name = 'themes',
    dependencies = {
        { 'catppuccin/nvim',      name = 'catppuccin', lazy = true },
        { 'morhetz/gruvbox',      name = 'gruvbox',    lazy = true },
        { 'rose-pine/neovim',     name = 'rose-pine',  lazy = true },
        { 'joshdick/onedark.vim', name = 'onedark',    lazy = true },
    },
    config = function()
        vim.cmd.colorscheme('tokyonight')
    end
}
