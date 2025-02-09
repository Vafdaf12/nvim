return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        local actions = require('telescope.actions')
        local builtin = require('telescope.builtin')

        require('telescope').setup({
            defaults = {
                mappings = {
                    i = {
                        ['<esc>'] = actions.close,
                        ['<C-u>'] = false,
                    }
                },
                file_ignore_patterns = {
                    'external', -- for C++ projects with external stuff that shouldn't be search regularly
                }
            },
        })

        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>hs', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>ts', function()
            builtin.treesitter({})
        end, {})
    end
}
