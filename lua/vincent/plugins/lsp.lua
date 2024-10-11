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
