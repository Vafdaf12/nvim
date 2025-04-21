return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            javascript = { "prettierd", "prettier" },
            typescript = { "prettierd", "prettier" },
            typescriptreact = { "prettierd", "prettier" },
            javascriptreact = { "prettierd", "prettier" },

            ["_"] = { "trim_whitespace" },
        },
        format_after_save = {
            lsp_format = "fallback",
            stop_after_first = true
        },
    },
}
