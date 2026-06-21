return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = {
        "vimdoc", "c", "lua", "bash",
        "php", "javascript", "jsdoc",
      },

      sync_install = false,
      auto_install = true,

      indent = {
        enable = true
      },

      highlight = {
        enable = true,

        additional_vim_regex_highlighting = { "markdown" },
      },
    })
  end
}
