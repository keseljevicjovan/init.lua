return {
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup {
        contrast = "hard",
        transparent_mode = true,
      }
      vim.cmd.colorscheme("gruvbox")
    end,
  },
  --[[{
    "shaunsingh/nord.nvim",
    config = function()
      require("nord").set {
        borders = true,
        disable_background = true,
        transparent_mode = true,
      }
    end,
  },]]--
}
