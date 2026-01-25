return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})

    local telescope_conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
          results = file_paths,
        }),
        previewer = telescope_conf.file_previewer({}),
        sorter = telescope_conf.generic_sorter({}),
      }):find()
    end

    vim.keymap.set("n", "<C-e>", function()
      toggle_telescope(harpoon:list())
    end)

    for i = 1, 9 do
      vim.keymap.set("n", "<leader>"..i, function() harpoon:list():select(i) end)
      vim.keymap.set("n", "<leader>!"..i, function() harpoon:list():replace_at(i) end)
    end
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<leader>r", function() harpoon:list():remove() end)

    vim.keymap.set("n", "<leader>k", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<leader>j", function() harpoon:list():next() end)
  end,
}
