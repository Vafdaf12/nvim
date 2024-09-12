return {
    'stevearc/conform.nvim',
    branch = 'nvim-0.9',
    opts = {
        formatters_by_ft = {
            javascript = { "prettierd", "prettier" },
            typescript = { "prettierd", "prettier" },
            typescriptreact = { "prettierd", "prettier" },
            javascriptreact = { "prettierd", "prettier" },
            rust = { "rustfmt" },
            go = { "gofmt" },

            ["_"] = { "trim_whitespace" },
        },
        format_after_save = {
            lsp_format = "fallback",
            stop_after_first = true
        },
    },
}
