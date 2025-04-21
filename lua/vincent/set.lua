-- Relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Set tab indents
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.bo.softtabstop = 4

-- Search Highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "no"

vim.opt.guicursor = ""
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.updatetime = 80

vim.g.mapleader = " "

-- Removes the Welcome screen
vim.opt.shortmess:append({ I = true })

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method('textDocument/definition') then
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
        end
        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end)
    end,
})
