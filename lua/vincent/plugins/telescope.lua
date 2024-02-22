return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    lazy = true,
    keys = {
        '<C-p>',
        '<leader>fs',
        '<leader>cb',
        '<leader>ts',
    },
    config = function()
        local actions = require("telescope.actions")
        local builtin = require('telescope.builtin')

        require('telescope').setup({
            defaults = {
                preview = false,
                mappings = {
                    i = {
                        ['<esc>'] = actions.close,
                        ["<C-u>"] = false,
                    }
                },
            },
            pickers = {
                find_files = {
                    theme = "dropdown",
                },
                git_branches = {
                    theme = "dropdown",
                },
                treesitter = {
                    theme = "dropdown",
                },
            },
        })
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>cb', builtin.git_branches, {})
        vim.keymap.set('n', '<leader>ts', function()
            builtin.treesitter({
                symbols = { 'method', 'function' },
            })
        end, {})
    end
}
