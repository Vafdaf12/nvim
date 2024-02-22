
return {
    'nvim-tree/nvim-tree.lua',
    lazy = true,
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        require("nvim-tree").setup({
            actions = {
                open_file = {
                    quit_on_open = true
                }
            }
        })
        vim.g.loaded_netrw       = 1
        vim.g.loaded_netrwPlugin = 1
    end,
    keys = {
        { "<leader>e", "<cmd>NvimTreeToggle<cr>" },
    },
}
