-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- setup lazy.nvim
local plugins = {
    require('vincent.plugin.explorer'),
    -- syntax highlighting
    require('vincent.plugin.treesitter'),

    -- fuzzy finder
    require('vincent.plugin.telescope'),

    -- autocomplete
    require('vincent.plugin.lsp'),

    -- color themes
    require('vincent.plugin.colors'),

    -- source control
    require('vincent.plugin.git'),
    require('vincent.plugin.gitsigns'),

    'kyazdani42/nvim-web-devicons',

    { 'mfussenegger/nvim-jdtls' },
    { 'windwp/nvim-ts-autotag', lazy = true },
}
local opts = {}

require('lazy').setup(plugins, opts)
