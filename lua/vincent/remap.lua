-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Selection
vim.keymap.set("n", "gp", "`[v`]")
vim.keymap.set('n', '<leader>ftw', function()
    vim.ui.input({ prompt = 'Tab width (spaces): ', default = '4' }, function(input)
        input = tonumber(input)
        vim.opt.tabstop = input
        vim.opt.shiftwidth = input
        vim.bo.softtabstop = input
    end)
end, {})

-- Line moving
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Quickfix List
vim.keymap.set("n", "]q", ":cnext<CR>")
vim.keymap.set("n", "[q", ":cprev<CR>")


-- System clipboard things
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>P", "\"+P")

-- Navigation
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
