return {
    {
        'williamboman/mason.nvim',
        dependencies = {
            -- Package manager to automatically install LSPs
            'williamboman/mason-lspconfig.nvim',
            'neovim/nvim-lspconfig',
        },
        build = function()
            pcall(vim.cmd, 'MasonUpdate')
        end,

        config = function()
            require('mason').setup()
            require('mason-lspconfig').setup {}

            require("mason-lspconfig").setup_handlers {
                -- Default handler for all servers
                function(server_name)  -- default handler (optional)
                    require("lspconfig")[server_name].setup {}
                end,
            }


            -- vim.o.completeopt = "menu,menuone,noinsert,fuzzy,popup"
            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(ev)
                    local client = vim.lsp.get_client_by_id(ev.data.client_id)
                    if client:supports_method('textDocument/definition') then
                        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
                    end
                end,
            })
        end
    },
}
