return {
  "nvim-telescope/telescope.nvim",

  dependencies = {
    "nvim-lua/plenary.nvim"
  },

  config = function()
    require('telescope').setup({
      defaults = {
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        winblend = 0,
        prompt_prefix = " > ",
        selection_caret = "❯ ",
        entry_prefix = "  ",

      },
    })

    local builtin = require('telescope.builtin')

    -- Navigation
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>po', builtin.oldfiles, {})

    -- Git
    vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
    vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
    vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
  end
}
