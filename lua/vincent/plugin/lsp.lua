return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        'neovim/nvim-lspconfig',             -- Required
        {                                      -- Optional
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        'williamboman/mason-lspconfig.nvim', -- Optional

        -- Autocompletion
        'hrsh7th/nvim-cmp',     -- Required
        'hrsh7th/cmp-nvim-lsp', -- Required
        { 'L3MON4D3/LuaSnip', lazy = true },     -- Required
    },

    config = function()
        local lsp = require('lsp-zero')
        local lspconfig = require('lspconfig')
        vim.keymap.set("n", "<leader>fm", "<cmd>LspZeroFormat<CR>")

        lsp.preset("recommended")

---@diagnostic disable-next-line: unused-local
        lsp.on_attach(function(client, bufnr)
            lsp.default_keymaps({buffer = bufnr})
        end)

        lspconfig.jdtls.setup({
            root_dir = function()
                return require("jdtls.setup").find_root({'gradlew', '.git', 'mvnw'})
            end,
        })

        -- (Optional) Configure lua language server for neovim
        lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

        lsp.setup()
    end
}
