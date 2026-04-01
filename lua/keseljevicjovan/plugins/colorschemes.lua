return {
  'NTBBloodbath/doom-one.nvim',
  config = function()
    vim.g.doom_one_cursor_coloring = false
    vim.g.doom_one_terminal_colors = true
    vim.g.doom_one_italic_comments = false
    vim.g.doom_one_enable_treesitter = true
    vim.g.doom_one_diagnostics_text_color = true
    vim.g.doom_one_transparent_background = true

    vim.g.doom_one_pumblend_enable = true
    vim.g.doom_one_pumblend_transparency = 20

    vim.cmd.colorscheme('doom-one')
  end
}
