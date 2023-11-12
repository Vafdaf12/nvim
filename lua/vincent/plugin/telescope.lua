return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>fd', builtin.lsp_document_symbols, {})
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})

        vim.keymap.set('n', '<leader>kt', builtin.colorscheme, {})
    end
}
