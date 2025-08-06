return {
  'nvim-lualine/lualine.nvim',
  --dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = {
          normal = {
            a = { fg = '#282828', bg = '#b16286' },
            b = { fg = '#ebdbb2', bg = '#3c3836' },
            c = { fg = '#ebdbb2' },
          },
          insert =  { a = { fg = '#282828', bg = '#458588' } },
          visual =  { a = { fg = '#282828', bg = '#689d6a' } },
          replace = { a = { fg = '#282828', bg = '#fb4934' } },
          inactive = {
            a = { fg = '#ebdbb2', bg = '#282828' },
            b = { fg = '#ebdbb2', bg = '#282828' },
            c = { fg = '#ebdbb2' },
          },
        },
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_b = { 'filename', 'branch' },
        lualine_c = { 'diff', 'diagnostics', '%=', },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }
  end
}
