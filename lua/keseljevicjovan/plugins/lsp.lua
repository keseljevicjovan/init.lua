return {
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "intelephense" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require('lspconfig')

            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.intelephense.setup({})

            vim.keymap.set("n", "<leader>lm", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, {})
        end
    }
}

