return {
  'nvim-lualine/lualine.nvim',
  --dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        always_show_tabline = false,
        theme = {
          normal = {
            a = { fg = '#000000', bg = '#FFFFFF' },
            b = { fg = '#FFFFFF', bg = '#000000' },
            c = { fg = '#FFFFFF', bg = '#000000' },
          },
          insert =  { a = { fg = '#000000', bg = '#FFFFFF' } },
          visual =  { a = { fg = '#000000', bg = '#FFFFFF' } },
          replace = { a = { fg = '#000000', bg = '#FFFFFF' } },
          inactive = {
            a = { fg = '#FFFFFF', bg = '#000000' },
            b = { fg = '#FFFFFF', bg = '#000000' },
            c = { fg = '#FFFFFF', bg = '#000000' },
          },
        },
        component_separators = '',
        section_separators = { left = '', right = '' },
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
