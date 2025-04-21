return {
    'stevearc/oil.nvim',
    main = "oil",
    config = true,

    -- Source: https://github.com/stevearc/oil.nvim?tab=readme-ov-file#options
    opts = {
        delete_to_trash = true,
        keymaps = {
            ["-"] = { "actions.parent", mode = "n" },
            ["g."] = { "actions.toggle_hidden", mode = "n" },
            ["<CR>"] = "actions.select",
            ["_"] = { "actions.open_cwd", mode = "n" },
            ["`"] = { "actions.cd", mode = "n" },
            ["gx"] = "actions.open_external",

            ["g?"] = { "actions.show_help", mode = "n" },
            -- ["<C-s>"] = { "actions.select", opts = { vertical = true } },
            -- ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
            -- ["<C-t>"] = { "actions.select", opts = { tab = true } },
            -- ["<C-p>"] = "actions.preview",
            --["<C-c>"] = { "actions.close", mode = "n" },
            --["<C-l>"] = "actions.refresh",
            --["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
            --["gs"] = { "actions.change_sort", mode = "n" },
            --["g\\"] = { "actions.toggle_trash", mode = "n" },
        }
    },
    keys = {
        { "<leader>e", "<cmd>Oil<CR>" }
    },


    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
}
