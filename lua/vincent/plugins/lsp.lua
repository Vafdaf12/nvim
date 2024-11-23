return {
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            -- Package manager to automatically install LSPs
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
        },
        build = function()
            pcall(vim.cmd, 'MasonUpdate')
        end,

        config = function()
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('user_lsp_attach', { clear = true }),
                callback = function(event)
                    local opts = { buffer = event.buf }

                    vim.keymap.set('n', '<F2>', function() vim.lsp.buf.rename() end, opts)
                    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
                    vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
                    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
                    vim.keymap.set('n', 'gl', function() vim.diagnostic.open_float() end, opts)
                    vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
                    vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
                    vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)

                    -- vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
                    -- vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
                    -- vim.keymap.set('n', 'go', function() vim.lsp.buf.type_definition() end, opts)
                    -- vim.keymap.set('n', 'gs', function() vim.lsp.buf.signature_help() end, opts)
                end,
            })
            require("mason").setup()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls" }
            }

            require("mason-lspconfig").setup_handlers {
                -- Default configuration for language servers
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {}
                end,

                -- Disable configuring typescript language server in favour of typescript-tools
                ["ts_ls"] = function() end,
            }
        end
    },
    {
        "pmizio/typescript-tools.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
        opts = {},
    }
}
