return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.8",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')

        -- Project
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>po', builtin.oldfiles, {})
        
        -- Git
        vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
        vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
        vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
       
        -- Colorscheme
        vim.keymap.set('n', '<leader>c', builtin.colorscheme, {})

        -- Man
        vim.keymap.set('n', '<leader>m', function()
            builtin.man_pages({
                sections = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "n", "l", "p" }
            })
        end, {})

        -- History
        -- vim.keymap.set('n', '<leader>s', builtin.search_history, {})
        
        -- Registers
        -- vim.keymap.set('n', '<leader>r', builtin.registers, {})
    end
}
