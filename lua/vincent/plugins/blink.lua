return {
    'saghen/blink.cmp',
    version = "*",
    dependencies = 'rafamadriz/friendly-snippets',
    opts = {
        fuzzy = { implementation = "prefer_rust_with_warning" },
        keymap = { preset = 'default' },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono'
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        signature = {
            enabled = true,
            window = {
                border = 'single',
                show_documentation = false
            }
        },
        completion = {
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 100,
                window = { border = 'single' }
            },
            list = {
                selection = {
                    auto_insert = false
                }
            },
        },
    },
    opts_extend = { "sources.default" }
}
