return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
    cmd = 'Mason',
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
        'L3MON4D3/LuaSnip',     -- Required

        -- Utility method for identifying java project
        'mfussenegger/nvim-jdtls'
    },

    config = function()
        local lsp = require('lsp-zero')
        local lspconfig = require('lspconfig')
        vim.keymap.set("n", "<leader>fm", ":LspZeroFormat<CR>")

        lsp.preset("recommended")

        lsp.on_attach(function(client, bufnr)
            lsp.default_keymaps({buffer = bufnr})
        end)

        -- (Optional) Configure lua language server for neovim
        lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
        lspconfig.jdtls.setup({
            root_dir = function()
                return require("jdtls.setup").find_root({'gradlew', '.git', 'mvnw'})
            end,
        })

        lsp.setup()

        local cmp = require('cmp')
        cmp.setup({
            mapping = {
                ['<tab>'] = cmp.mapping.confirm({ select = false }),
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            }
        })
    end
}
