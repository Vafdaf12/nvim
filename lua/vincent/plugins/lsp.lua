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

                ["ts_ls"] = function() end,

                ["jdtls"] = function()
                    require("lspconfig").jdtls.setup({
                        root_dir = function()
                            return require("jdtls.setup").find_root({ 'gradlew', '.git', 'mvnw', 'build.xml' }) .. "/src"
                        end,
                    })
                end,
            }
        end
    },
    {
        "pmizio/typescript-tools.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
        opts = {},
    },
    {
        'mfussenegger/nvim-jdtls',
        lazy = true
    },
}
