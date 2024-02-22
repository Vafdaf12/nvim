
local themes = {
    ['github_dark_default'] = 'projekt0n/github-nvim-theme',
    ['edge'] = 'sainnhe/edge',
    ['kanagawa'] = 'rebelot/kanagawa.nvim',
    ['rose-pine'] = 'rose-pine/neovim',
}
local active_theme = 'github_dark_default'

return {
    themes[active_theme],
    config = function()
        vim.cmd.colorscheme(active_theme)
    end
}
