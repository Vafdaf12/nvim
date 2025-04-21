return {
    {
        'williamboman/mason.nvim',
        dependencies = {
            -- Contains a bunch of pre-made LSP configurations
            'neovim/nvim-lspconfig',

            -- Automatically sets up installed LSPs
            'williamboman/mason-lspconfig.nvim',
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
        end
    },
}
