return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = 'nvim-treesitter.configs',
    config = true,
    opts = {
        -- A list of parser names, or "all" (the five listed parsers should always be installed)
        ensure_installed = { "lua", "json" },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
    }
}
