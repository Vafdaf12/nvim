return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup()
        vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<cr>")
        vim.keymap.set("n", "<leader>et", ":NvimTreeToggle<cr>")
    end,
}
