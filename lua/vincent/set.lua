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

vim.opt.shortmess:append({ I = true })

local _border = "single"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
        border = _border
    }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help, {
        border = _border
    }
)

vim.diagnostic.config {
    float = { border = _border }
}
