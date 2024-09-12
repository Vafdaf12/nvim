
return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        require("nvim-tree").setup({
            view = {
                centralize_selection = true,
                side = "right"
            },
            update_focused_file = {
                enable = true
            },
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
