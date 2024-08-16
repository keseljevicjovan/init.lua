return {
    "ellisonleao/gruvbox.nvim",
    config = function()
        vim.cmd("colorscheme gruvbox")

        require('gruvbox').setup({
            contrast = "hard",  
            transparent_mode = true,
        })
    end
}
